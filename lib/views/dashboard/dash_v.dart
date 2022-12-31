import 'package:flutter/material.dart';
import 'package:justanapp/responsive/responsive_layout.dart';
import 'package:justanapp/responsive/scaffolds/desktop_scaffold.dart';
import 'package:justanapp/responsive/scaffolds/mobile_scaffold.dart';
import 'package:justanapp/responsive/scaffolds/tablet_scaffold.dart';
import 'package:justanapp/views/dashboard/components/dashboard.dart';
import 'package:justanapp/views/dashboard/components/dashboard/dash_chart.dart';
import 'package:justanapp/views/dashboard/components/sidebar.dart';
import 'package:justanapp/views/dashboard/dash_vm.dart';
import 'package:stacked/stacked.dart';

class Dashboard extends StatelessWidget {
  static const String routeName = 'dashboard';
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: MobileScaffold(child: DashboardView()),
      desktopScaffold: DesktopScaffold(
          isNoAppBarNoDrawer: true,
          width: double.infinity,
          noSafeAreaMargin: true,
          child: DashboardView()),
      tabletScaffold: TabletScaffold(
          isNoAppBarNoDrawer: true,
          width: double.infinity,
          noSafeAreaMargin: true,
          child: DashboardView()),
    );
  }
}

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => DashboardViewModel(),
      builder: (context, model, _) => Stack(
        children: [
          Row(
            children: const [
              SideBarView(),
              DashboardMain(),
            ],
          ),
          if (model.isChartInFullScreen)
            Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: const ChartWidget(isFullScreen: true)),
        ],
      ),
    );
  }
}
