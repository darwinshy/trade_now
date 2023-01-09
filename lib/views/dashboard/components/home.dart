import 'package:flutter/material.dart';
import 'package:justanapp/views/dashboard/components/dashboard.dart';
import 'package:justanapp/views/dashboard/components/dashboard/dash_title_bar.dart';
import 'package:justanapp/views/dashboard/dash_vm.dart';

import 'package:stacked/stacked.dart';

class HomeView extends ViewModelWidget<DashboardViewModel> {
  const HomeView({Key? key}) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    double height = MediaQuery.of(context).size.height;

    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
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
