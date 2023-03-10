import 'package:flutter/material.dart';
import 'package:justanapp/views/dashboard/dash_vm.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:stacked/stacked.dart';

class DashboardTabItems extends ViewModelWidget<DashboardViewModel> {
  const DashboardTabItems({Key? key}) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    double width = MediaQuery.of(context).size.width;
    bool? isDesktop = ResponsiveWrapper.of(context).isDesktop;
    return SizedBox(
      width: isDesktop ? width * 0.3 : width * 0.6,
      height: 40,
      child: TabBar(controller: viewModel.tabController, tabs: viewModel.tabs),
    );
  }
}
