import 'package:flutter/material.dart';
import 'package:justanapp/views/dashboard/components/dashboard.dart';
import 'package:justanapp/views/dashboard/components/dashboard/dash_title_bar.dart';
import 'package:justanapp/views/dashboard/dash_vm.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'package:stacked/stacked.dart';

class HomeView extends ViewModelWidget<DashboardViewModel> {
  const HomeView({Key? key}) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: viewModel.isSideBarOpen ? width * 0.78 : width * 0.98,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      child: Expanded(
        child: ListView(
          shrinkWrap: true,
          children: [
            const DasbboardTitleBar(),
            SizedBox(height: height * 0.04),
            const Dashboard()
          ],
        ),
      ),
    );
  }
}
