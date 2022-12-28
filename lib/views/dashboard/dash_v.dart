import 'package:flutter/material.dart';
import 'package:justanapp/responsive/responsive_layout.dart';
import 'package:justanapp/responsive/scaffolds/desktop_scaffold.dart';
import 'package:justanapp/responsive/scaffolds/mobile_scaffold.dart';
import 'package:justanapp/responsive/scaffolds/tablet_scaffold.dart';
import 'package:justanapp/views/dashboard/components/main/dashboard.dart';
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
      tabletScaffold: TabletScaffold(child: DashboardView()),
    );
  }
}

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
      viewModelBuilder: () => DashboardViewModel(),
      builder: (context, model, _) => Row(
        children: const [
          Expanded(flex: 2, child: SideBar()),
          Expanded(flex: 8, child: DashboardMain()),
        ],
      ),
    );
  }
}
