import 'package:justanapp/views/login/login_v.dart';
import 'package:justanapp/views/onboarding/onboard_v.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import '../root.dart';
import 'package:stacked_themes/stacked_themes.dart';
/*
  * Routes and Services for the app are registered here.
  
  * Generate dependency files by running the following command in the terminal   
  * * flutter pub run build_runner build --delete-conflicting-outputs

  * * Generates the following files:
  * * - lib/app/app.locator.dart
  * * - lib/app/app.router.dart
*/

@StackedApp(
  dependencies: [
    LazySingleton(classType: DialogService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: ThemeService)

    /*
      * todo: add other dependencies here
      * example - LazySingleton(classType: SomeService),
    */
  ],
  routes: <StackedRoute<dynamic>>[
    StackedRoute<dynamic>(path: Root.routeName, page: Root),
    StackedRoute<dynamic>(path: Onboarding.routeName, page: Onboarding),
    StackedRoute<dynamic>(path: Login.routeName, page: Login),
  ],
)
class App {}
