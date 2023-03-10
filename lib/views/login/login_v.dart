import 'package:flutter/material.dart';
import 'package:justanapp/responsive/responsive_layout.dart';
import 'package:justanapp/responsive/scaffolds/desktop_scaffold.dart';
import 'package:justanapp/responsive/scaffolds/mobile_scaffold.dart';
import 'package:justanapp/responsive/scaffolds/tablet_scaffold.dart';
import 'package:justanapp/views/login/components/login_art.dart';
import 'package:justanapp/views/login/components/login_form.dart';
import 'package:justanapp/views/login/login_vm.dart';
import 'package:stacked/stacked.dart';

class Login extends StatelessWidget {
  static const String routeName = 'login';
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return ResponsiveLayout(
      mobileScaffold: const MobileScaffold(child: LoginView()),
      desktopScaffold: DesktopScaffold(
          width: width * 0.8,
          height: height * 0.8,
          isDrawerVisible: false,
          child: const LoginView()),
      tabletScaffold: TabletScaffold(
        width: width * 0.8,
        child: const LoginView(),
      ),
    );
  }
}

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ViewModelBuilder.nonReactive(
      viewModelBuilder: () => LoginViewModel(),
      builder: (context, model, _) => Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          children: [
            const Expanded(
              flex: 1,
              child: LoginForm(),
            ),
            if (!model.isMobile)
              const Expanded(
                flex: 1,
                child: LoginArt(),
              )
          ],
        ),
      ),
    );
  }
}
