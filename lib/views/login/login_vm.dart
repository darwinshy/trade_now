import 'dart:io';

import 'package:stacked/stacked.dart';

class LoginViewModel extends BaseViewModel {
  bool isRememberMe = false;

  final bool isMobile = Platform.isAndroid || Platform.isIOS;

  void toggleCheckbox(bool? value) {
    isRememberMe = !isRememberMe;
    notifyListeners();
  }
}
