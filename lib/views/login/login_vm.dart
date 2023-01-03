import 'dart:io';

import 'package:justanapp/app/app.locator.dart';
import 'package:justanapp/views/dashboard/dash_v.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  bool isRememberMe = false;

  final bool isMobile = Platform.isAndroid || Platform.isIOS;

  void navigateToDashboard() {
    _navigationService.clearStackAndShow(Dashboard.routeName);
  }

  void toggleCheckbox(bool? value) {
    isRememberMe = !isRememberMe;
    notifyListeners();
  }
}
