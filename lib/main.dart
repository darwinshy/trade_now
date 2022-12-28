import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:stacked_services/stacked_services.dart';
import '../app/app.locator.dart';
import '../app/app.router.dart';
import '../root.dart';
import '../app/app.theme.dart';
import 'package:stacked_themes/stacked_themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// * Initialize the ThemeManager
  await ThemeManager.initialise();

  /// * Setup the locator
  await setupLocator();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      defaultThemeMode: ThemeMode.light,
      darkTheme: darkTheme,
      lightTheme: lightTheme,
      builder: materialApp,
    );
  }

  Widget materialApp(context, regularTheme, darkTheme, themeMode) {
    return MaterialApp(
      title: 'JustAnApp',
      theme: regularTheme,
      themeMode: themeMode,
      debugShowCheckedModeBanner: false,
      initialRoute: Root.routeName,
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      builder: (context, child) => ResponsiveWrapper.builder(
        defaultScale: true,
        child,
        breakpoints: const [
          ResponsiveBreakpoint.resize(600, name: MOBILE),
          ResponsiveBreakpoint.resize(800, name: TABLET),
          ResponsiveBreakpoint.resize(1200, name: DESKTOP),
        ],
      ),
    );
  }
}
