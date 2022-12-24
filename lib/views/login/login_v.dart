import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:justanapp/app/app.size.dart';
import 'package:justanapp/responsive/responsive_layout.dart';
import 'package:justanapp/responsive/scaffolds/desktop_scaffold.dart';
import 'package:justanapp/responsive/scaffolds/mobile_scaffold.dart';
import 'package:justanapp/responsive/scaffolds/tablet_scaffold.dart';
import 'package:justanapp/views/login/login_vm.dart';
import 'package:justanapp/widget/button.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';

class Login extends StatelessWidget {
  static const String routeName = 'login';
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: MobileScaffold(child: LoginView()),
      desktopScaffold: DesktopScaffold(child: LoginView()),
      tabletScaffold: TabletScaffold(child: LoginView()),
    );
  }
}

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => LoginViewModel(),
      builder: (context, model, child) => Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 24,
                        child: Center(
                          child: SizedBox(
                            width: model.isMobile
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
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12)),
                                SizedBox(
                                    height: getProportionateScreenHeight(20)),
                                const TextField(
                                  decoration: InputDecoration(
                                      label: Text('Email'),
                                      hintText: 'Enter your email address'),
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(20)),
                                const TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      label: Text('Password'),
                                      hintText: 'Enter a secure password'),
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(20)),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Checkbox(
                                          value: model.isRememberMe,
                                          onChanged: model.toggleCheckbox,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                        ),
                                        const Text(
                                          'Remember me',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12),
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
                                SizedBox(
                                    height: getProportionateScreenHeight(20)),
                                RoundedTextButton(
                                    text: 'Sign in',
                                    isLoading: false,
                                    fontSize: 16,
                                    press: () {}),
                                SizedBox(
                                    height: getProportionateScreenHeight(10)),
                                RoundedTextButton(
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.1),
                                  isLoading: false,
                                  fontSize: getProportionateScreenHeight(12),
                                  press: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/logos/google-logo.svg',
                                        height:
                                            getProportionateScreenHeight(20),
                                      ),
                                      SizedBox(
                                        width: getProportionateScreenWidth(4),
                                      ),
                                      const Text(
                                        'Sign in with Google',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Terms and Conditions',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 10)),
                            Text('Privacy Policy',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 10)),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            if (!model.isMobile)
              Expanded(
                flex: 1,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.001),
                    boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.1)),
                    ],
                  ),
                  child: Center(
                      child: Lottie.asset(
                    'assets/images/127883-turkey.json',
                    width: getProportionateScreenWidth(100),
                  )),
                ),
              )
          ],
        ),
      ),
    );
  }
}
