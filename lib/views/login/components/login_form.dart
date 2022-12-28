import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:justanapp/app/app.size.dart';
import 'package:justanapp/views/login/components/login_tnC.dart';
import 'package:justanapp/views/login/login_vm.dart';
import 'package:justanapp/widget/button.dart';
import 'package:stacked/stacked.dart';

class LoginForm extends ViewModelWidget<LoginViewModel> {
  const LoginForm({Key? key}) : super(key: key, reactive: false);

  @override
  Widget build(BuildContext context, LoginViewModel viewModel) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 24,
          child: Center(
            child: SizedBox(
              width: viewModel.isMobile
                  ? double.infinity
                  : getProportionateScreenWidth(80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Get Started',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  const Text('Sign in to continue',
                      style: TextStyle(color: Colors.grey, fontSize: 12)),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  const TextField(
                    decoration: InputDecoration(
                        label: Text('Email'),
                        hintText: 'Enter your email address'),
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        label: Text('Password'),
                        hintText: 'Enter a secure password'),
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: viewModel.isRememberMe,
                            onChanged: viewModel.toggleCheckbox,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          const Text(
                            'Remember me',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () => {},
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(fontSize: 12),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  RoundedTextButton(
                      text: 'Sign in',
                      isLoading: false,
                      fontSize: 14,
                      press: () {}),
                  SizedBox(height: getProportionateScreenHeight(10)),
                  RoundedTextButton(
                    color: Theme.of(context).primaryColor.withOpacity(0.1),
                    isLoading: false,
                    fontSize: getProportionateScreenHeight(12),
                    press: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/logos/google-logo.svg',
                          height: getProportionateScreenHeight(20),
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(4),
                        ),
                        const Text(
                          'Sign in with Google',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const LoginTnCPnP(),
      ],
    );
  }
}
