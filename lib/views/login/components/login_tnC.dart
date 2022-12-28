import 'package:flutter/material.dart';
import 'package:justanapp/views/login/login_vm.dart';
import 'package:stacked/stacked.dart';

class LoginTermsAndPolicies extends ViewModelWidget<LoginViewModel> {
  const LoginTermsAndPolicies({Key? key}) : super(key: key, reactive: false);

  @override
  Widget build(BuildContext context, LoginViewModel viewModel) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Terms and Conditions',
            style: TextStyle(color: Colors.grey, fontSize: 10),
          ),
          Text(
            'Privacy Policy',
            style: TextStyle(color: Colors.grey, fontSize: 10),
          ),
        ],
      ),
    );
  }
}
