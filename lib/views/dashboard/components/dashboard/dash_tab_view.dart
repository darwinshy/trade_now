import 'package:flutter/material.dart';
import 'package:justanapp/views/dashboard/dash_vm.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:stacked/stacked.dart';

class DashboardTabView extends ViewModelWidget<DashboardViewModel> {
  const DashboardTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    bool? isDesktop = ResponsiveWrapper.of(context).isDesktop;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.03),
        borderRadius: BorderRadius.circular(4),
      ),
      height: height * 0.5,
      width: isDesktop
          ? (viewModel.isSideBarOpen ? width * 0.5 : width * 0.7)
          : width,
      child: TabBarView(
          controller: viewModel.tabController, children: viewModel.tabViews),
    );
  }
}
