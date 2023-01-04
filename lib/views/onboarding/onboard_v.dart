import 'package:flutter/material.dart';
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
        desktopScaffold:
            DesktopScaffold(isDrawerVisible: false, child: OnboardingView()),
        tabletScaffold: TabletScaffold(child: OnboardingView()));
  }
}

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return ViewModelBuilder.reactive(
      viewModelBuilder: () => OnboardingViewModel(),
      builder: (context, model, child) => Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        width: model.isMobile ? width : width * 0.5,
        child: Flex(
          direction: model.isMobile ? Axis.vertical : Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Lottie.asset('assets/images/onboarding.json',
                      height: height * 0.3),
                  const SizedBox(height: 10),
                  const Text(
                    'Trade stocks, crypto and \nmany more',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 64),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut labore et dolore magna aliqua.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Theme.of(context).primaryColor.withOpacity(0.7),
                        fontSize: 16),
                  ),
                ],
              ),
            ),
            if (model.isMobile)
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: RoundedTextButton(
                  text: 'Continue',
                  isLoading: false,
                  fontSize: 14,
                  press: model.navigateToLogin,
                ),
              )
            else
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.001),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    onPressed: model.navigateToLogin,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
