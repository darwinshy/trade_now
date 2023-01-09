import 'package:flutter/material.dart';
import 'package:justanapp/views/dashboard/components/dashboard/dash_head_text.dart';
import 'package:justanapp/views/dashboard/components/dashboard/dash_tab_body.dart';
import 'package:justanapp/views/dashboard/components/infobar.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    bool? isDesktop = ResponsiveWrapper.of(context).isDesktop;

    return Flex(
      direction: !isDesktop ? Axis.vertical : Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const DashboardBody(),
        if (!isDesktop) SizedBox(height: height * 0.05),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const DashboardHeadText(),
        SizedBox(height: height * 0.04),
        const DashboardTabBody(),
      ],
    );
  }
}
