import 'package:flutter/material.dart';
import 'package:justanapp/app/app.size.dart';
import 'package:justanapp/widget/drawer.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold(
      {Key? key, required this.child, this.backgroundColor, this.width})
      : super(key: key);

  final Widget child;
  final Color? backgroundColor;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(),
      drawer: const SideDrawer(),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 10, vertical: 80),
        child: Center(
            child: SizedBox(
                width: width ?? SizeConfig.screenWidth! * 0.8, child: child)),
      ),
    );
  }
}
