import 'package:flutter/material.dart';
import 'package:justanapp/views/dashboard/components/sidebar/sidebar_actions.dart';
import 'package:justanapp/views/dashboard/components/sidebar/sidebar_ham.dart';
import 'package:justanapp/views/dashboard/components/sidebar/sidebar_top.dart';
import 'package:justanapp/views/dashboard/dash_vm.dart';
import 'package:stacked/stacked.dart';

class SideBarView extends ViewModelWidget<DashboardViewModel> {
  const SideBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    return Stack(children: const [
      SideBar(),
      HamburgarIcon(),
    ]);
  }
}

class SideBar extends ViewModelWidget<DashboardViewModel> {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOutCubic,
      width: viewModel.isSideBarOpen ? width * 0.2 : 20,
      height: height,
      color: !viewModel.isSideBarOpen
          ? Colors.transparent
          : Theme.of(context).primaryColor.withOpacity(0.1),
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
      child: ListView(
        shrinkWrap: true,
        children: viewModel.isSideBarContentVisible
            ? [
                const SideBarTop(),
                SizedBox(height: height * 0.05),
                SideBarActionsList(
                  title: 'GENERAL',
                  list: SideBarActionsListView(
                      list: viewModel.sideBarItemsGenerals),
                ),
                SizedBox(height: height * 0.05),
                SideBarActionsList(
                  title: 'QUICKS',
                  list: SideBarActionsListView(
                      list: viewModel.sideBarItemsQuicks),
                ),
                SizedBox(height: height * 0.05),
                SideBarActionsList(
                  title: 'SHORCUTS',
                  list: SideBarActionsListView(
                      list: viewModel.sideBarItemsShortcuts),
                ),
              ]
            : [],
      ),
    );
  }
}
