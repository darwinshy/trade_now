import 'package:flutter/material.dart';
import 'package:justanapp/views/dashboard/components/dashboard/dash_tab_items.dart';
import 'package:justanapp/views/dashboard/dash_vm.dart';
import 'package:stacked/stacked.dart';

class DashboardTabBar extends ViewModelWidget<DashboardViewModel> {
  const DashboardTabBar({Key? key}) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
              color: Theme.of(context).primaryColor.withOpacity(0.1)),
        ),
      ),
      child: const DashboardTabItems(),
    );
  }
}
