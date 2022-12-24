import 'package:flutter/material.dart';
import 'package:justanapp/app/app.size.dart';
import 'package:justanapp/responsive/responsive_layout.dart';
import 'package:justanapp/responsive/scaffolds/desktop_scaffold.dart';
import 'package:justanapp/responsive/scaffolds/mobile_scaffold.dart';
import 'package:justanapp/responsive/scaffolds/tablet_scaffold.dart';
import 'package:justanapp/views/onboarding/onboard_vm.dart';
import 'package:justanapp/widget/button.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';

class Onboarding extends StatelessWidget {
  static const String routeName = 'onboarding';
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        mobileScaffold: MobileScaffold(child: OnboardingView()),
        desktopScaffold: DesktopScaffold(child: OnboardingView()),
        tabletScaffold: TabletScaffold(child: OnboardingView()));
  }
}

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => OnboardingViewModel(),
      builder: (context, model, child) => Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        width: model.isMobile
            ? getProportionateScreenWidth(300)
            : getProportionateScreenWidth(100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Lottie.asset(
                'assets/images/onboarding.json',
                width: getProportionateScreenWidth(300),
                height: getProportionateScreenHeight(300),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Discover the best \nrestaurants in your area',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  Text(
                    'Healthy food, fast delivery, and easy payment',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Theme.of(context).primaryColor.withOpacity(0.5),
                        fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: model.isMobile ? null : getProportionateScreenWidth(150),
              height: getProportionateScreenHeight(50),
              child: RoundedTextButton(
                  text: 'Continue',
                  isLoading: false,
                  fontSize: 14,
                  press: model.navigateToLogin),
            )
          ],
        ),
      ),
    );
  }
}
