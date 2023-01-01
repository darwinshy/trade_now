import 'package:flutter/material.dart';
import 'package:justanapp/views/dashboard/components/dashboard/dash_tab_bar.dart';
import 'package:justanapp/views/dashboard/components/dashboard/dash_tab_view.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(children: [
      const DashboardTabBar(),
      SizedBox(height: height * 0.04),
      const DashboardTabView()
    ]);
  }
}
