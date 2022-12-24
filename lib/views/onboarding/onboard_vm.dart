import 'dart:io';

import 'package:flutter/animation.dart';
import 'package:justanapp/app/app.locator.dart';
import 'package:justanapp/views/login/login_v.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OnboardingViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  final bool isMobile = Platform.isAndroid || Platform.isIOS;

  void navigateToLogin() {
    _navigationService.navigateWithTransition(const Login(),
        transitionStyle: Transition.fade, curve: Curves.fastLinearToSlowEaseIn);
  }
}
