import 'dart:math';

import 'package:flutter/material.dart';
import 'package:justanapp/models/chart_data.dart';
import 'package:stacked/stacked.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashboardViewModel extends BaseViewModel {
  String sideBarActiveId = 'home';
  bool isSideBarOpen = true;
  bool isChartInFullScreen = false;
  List<ChartTimeData> chartData = [];

  void toggleFullScreen() {
    isChartInFullScreen = !isChartInFullScreen;
    notifyListeners();
  }

  void toggleSideBarStatus() {
    isSideBarOpen = !isSideBarOpen;
    notifyListeners();
  }

  void selectSideBarItems(String id) {
    sideBarActiveId = id;
    notifyListeners();
  }

  void populateChartData() {
    chartData.clear();
    for (int i = 0; i < 100; i++) {
      chartData.add(ChartTimeData(
          DateTime(2021, 1, 1).add(Duration(minutes: i)),
          50 + Random().nextInt(50).toDouble()));
    }
    notifyListeners();
  }

  List<SplineAreaSeries<ChartTimeData, DateTime>> getDefaultLineSeries() {
    return <SplineAreaSeries<ChartTimeData, DateTime>>[
      SplineAreaSeries<ChartTimeData, DateTime>(
          splineType: SplineType.monotonic,
          gradient: const LinearGradient(colors: <Color>[
            Color.fromARGB(255, 224, 253, 255),
            Color.fromARGB(255, 0, 119, 125)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          enableTooltip: false,
          animationDuration: 100,
          dataSource: chartData,
          xValueMapper: (ChartTimeData sales, _) => sales.x,
          yValueMapper: (ChartTimeData sales, _) => sales.y,
          markerSettings: const MarkerSettings(
            width: 1,
            height: 1,
            shape: DataMarkerType.circle,
            isVisible: true,
          )),
    ];
  }

  List<Tab> tabs = const [
    Tab(text: 'Summary'),
    Tab(text: 'Charts'),
    Tab(text: 'Profile'),
    Tab(text: 'Analysis'),
    Tab(text: 'Settings')
  ];

  List<Map<String, Object>> sideBarItemsQuicks = [
    {
      'id': 'globalSearch',
      'text': 'Global search',
      'icon': Icons.search,
    },
    {
      'id': 'community',
      'text': 'Community',
      'icon': Icons.people,
    },
    {
      'id': 'helpAndSupport',
      'text': 'Help & Support',
      'icon': Icons.message,
    },
  ];

  List<Map<String, Object>> sideBarItemsGenerals = [
    {
      'id': 'home',
      'text': 'Home',
      'icon': Icons.home,
    },
    {
      'id': 'stocksAndFunds',
      'text': 'Stocks & Funds',
      'icon': Icons.graphic_eq_sharp,
    },
    {
      'id': 'investing',
      'text': 'Investing',
      'icon': Icons.auto_graph_outlined,
    },
    {
      'id': 'crypto',
      'text': 'Crypto',
      'icon': Icons.currency_bitcoin,
    },
    {
      'id': 'wallet',
      'text': 'Wallet',
      'icon': Icons.wallet,
    },
  ];

  List<Map<String, Object>> sideBarItemsShortcuts = [
    {
      'id': 'marketWatch',
      'text': 'Market Watch',
      'icon': Icons.link_rounded,
    },
    {
      'id': 'watchlist',
      'text': 'Watchlist',
      'icon': Icons.link_rounded,
    },
  ];
}
