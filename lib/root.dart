import 'package:flutter/material.dart';
import 'package:justanapp/app/app.locator.dart';
import 'package:justanapp/views/dashboard/dash_v.dart';
import 'package:stacked/stacked.dart';

import 'package:stacked_services/stacked_services.dart';

class RootViewModel extends BaseViewModel {
  // __________________________________________________________________________
  // Getting Dependencies
  final NavigationService _navigationService = locator<NavigationService>();

  // ___________________________________________________________________________

  Future<void> handleStartupLogic() async {
    // _navigationService.clearStackAndShow(Onboarding.routeName);
    _navigationService.clearStackAndShow(Dashboard.routeName);
  }
}

class Root extends StatelessWidget {
  static const String routeName = 'root';
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RootViewModel>.reactive(
      builder: (_, __, ___) => const Scaffold(),
      onModelReady: (RootViewModel model) {
        Future.delayed(const Duration(seconds: 0), model.handleStartupLogic);
      },
      viewModelBuilder: () => RootViewModel(),
    );
  }
}
