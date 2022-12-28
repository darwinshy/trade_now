import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class DashboardViewModel extends BaseViewModel {
  String sideBarActiveId = 'home';
  bool isSideBarOpen = true;

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

  void updateSideBarStatus() {
    isSideBarOpen = !isSideBarOpen;
    notifyListeners();
  }

  void updateSideBarItems(String id) {
    sideBarActiveId = id;
    notifyListeners();
  }
}
