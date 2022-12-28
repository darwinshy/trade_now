import 'package:flutter/material.dart';
import 'package:justanapp/views/dashboard/dash_vm.dart';
import 'package:stacked/stacked.dart';

class DashboardMain extends ViewModelWidget<DashboardViewModel> {
  const DashboardMain({Key? key}) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    return Center(
        child: Text(viewModel.sideBarActiveId.toString(),
            style: Theme.of(context).textTheme.headline1));
  }
}
