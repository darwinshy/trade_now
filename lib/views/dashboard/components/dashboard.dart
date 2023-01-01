import 'package:flutter/material.dart';
import 'package:justanapp/views/dashboard/components/dashboard/dash_body.dart';
import 'package:justanapp/views/dashboard/components/dashboard/dash_head_text.dart';
import 'package:justanapp/views/dashboard/components/dashboard/dash_title_bar.dart';
import 'package:justanapp/views/dashboard/dash_vm.dart';

import 'package:stacked/stacked.dart';

class DashboardMain extends ViewModelWidget<DashboardViewModel> {
  const DashboardMain({Key? key}) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    double height = MediaQuery.of(context).size.height;

    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DasbboardTitleBar(),
            SizedBox(height: height * 0.04),
            const DashboardHeadText(),
            SizedBox(height: height * 0.04),
            const DashboardBody(),
          ],
        ),
      ),
    );
  }
}
