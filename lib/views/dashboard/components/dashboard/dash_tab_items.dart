import 'package:flutter/material.dart';
import 'package:justanapp/views/dashboard/dash_vm.dart';
import 'package:stacked/stacked.dart';

class DashboardTabItems extends ViewModelWidget<DashboardViewModel> {
  const DashboardTabItems({Key? key}) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width * 0.3,
      child: DefaultTabController(
          length: viewModel.tabs.length, child: TabBar(tabs: viewModel.tabs)),
    );
  }
}
