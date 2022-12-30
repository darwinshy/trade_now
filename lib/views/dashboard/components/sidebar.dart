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
    return AnimatedCrossFade(
      firstChild: Container(
        height: MediaQuery.of(context).size.height,
        color: Theme.of(context).primaryColor.withOpacity(0.1),
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
        margin: const EdgeInsets.only(right: 15),
        child: ListView(
          shrinkWrap: true,
          children: [
            const SideBarTop(),
            const SizedBox(
              height: 20,
            ),
            SideBarActionsList(
              title: 'GENERAL',
              list:
                  SideBarActionsListView(list: viewModel.sideBarItemsGenerals),
            ),
            const SizedBox(
              height: 20,
            ),
            SideBarActionsList(
              title: 'QUICKS',
              list: SideBarActionsListView(list: viewModel.sideBarItemsQuicks),
            ),
            const SizedBox(
              height: 20,
            ),
            SideBarActionsList(
              title: 'SHORCUTS',
              list:
                  SideBarActionsListView(list: viewModel.sideBarItemsShortcuts),
            ),
          ],
        ),
      ),
      secondChild: Container(),
      crossFadeState: viewModel.isSideBarOpen
          ? CrossFadeState.showFirst
          : CrossFadeState.showSecond,
      firstCurve: Curves.easeInOutCubic,
      secondCurve: Curves.easeInOutCubic,
      sizeCurve: Curves.easeInOutCubic,
      reverseDuration: const Duration(milliseconds: 100),
      duration: const Duration(milliseconds: 100),
    );
  }
}
