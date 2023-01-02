import 'package:flutter/material.dart';
import 'package:justanapp/views/dashboard/dash_vm.dart';
import 'package:stacked/stacked.dart';

class DashboardTabView extends ViewModelWidget<DashboardViewModel> {
  const DashboardTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.03),
        borderRadius: BorderRadius.circular(4),
      ),
      height: height * 0.5,
      child: TabBarView(
          controller: viewModel.tabController, children: viewModel.tabViews),
    );
  }
}
