import 'package:flutter/material.dart';
import 'package:justanapp/views/dashboard/components/dashboard/dash_head_text.dart';
import 'package:justanapp/views/dashboard/components/dashboard/dash_tab_body.dart';
import 'package:justanapp/views/dashboard/components/infobar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const DashboardBody(),
        SizedBox(width: width * 0.04),
        const InfoBar()
      ],
    );
  }
}

class DashboardBody extends StatelessWidget {
  const DashboardBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DashboardHeadText(),
          SizedBox(height: height * 0.04),
          const DashboardTabBody(),
        ],
      ),
    );
  }
}
