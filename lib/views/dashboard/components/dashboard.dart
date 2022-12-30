import 'package:flutter/material.dart';
import 'package:justanapp/views/dashboard/components/dashboard/dash_head_text.dart';
import 'package:justanapp/views/dashboard/components/dashboard/dash_tab_bar.dart';
import 'package:justanapp/views/dashboard/components/dashboard/dash_title_bar.dart';
import 'package:justanapp/views/dashboard/dash_vm.dart';

import 'package:stacked/stacked.dart';

class DashboardMain extends ViewModelWidget<DashboardViewModel> {
  const DashboardMain({Key? key}) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DasbboardTitleBar(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Flex(
              direction: Axis.horizontal,
              children: const [
                DashboardTabBar(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
