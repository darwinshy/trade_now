import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget desktopScaffold;
  final Widget tabletScaffold;

  const ResponsiveLayout(
      {Key? key,
      required this.mobileScaffold,
      required this.desktopScaffold,
      required this.tabletScaffold})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      //  If the screen is less than 600 pixels wide, then a mobile device.
      if (constraints.maxWidth < 600) {
        return mobileScaffold;
      }

      //  If the screen is 600 pixels wide or wider, then  a tablet.
      if (constraints.maxWidth >= 600 && constraints.maxWidth < 1200) {
        return tabletScaffold;
      }

      //  If the screen is more than 1200 pixels wide, then a desktop.
      return desktopScaffold;
    });
  }
}
