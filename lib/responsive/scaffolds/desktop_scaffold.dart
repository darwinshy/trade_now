import 'package:flutter/material.dart';
import 'package:justanapp/app/app.size.dart';
import 'package:justanapp/widget/drawer.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold(
      {Key? key,
      required this.child,
      this.backgroundColor,
      this.width,
      this.isAppBarVisible,
      this.isDrawerVisible,
      this.isNoAppBarNoDrawer,
      this.noSafeAreaMargin})
      : super(key: key);

  final bool? isAppBarVisible;
  final bool? isDrawerVisible;
  final bool? isNoAppBarNoDrawer;
  final bool? noSafeAreaMargin;

  final Color? backgroundColor;

  final double? width;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
      appBar: isNoAppBarNoDrawer != null
          ? null
          : isAppBarVisible != null
              ? null
              : AppBar(),
      drawer: isNoAppBarNoDrawer != null
          ? null
          : isDrawerVisible != null
              ? null
              : const SideDrawer(),
      body: SafeArea(
        minimum: noSafeAreaMargin != null
            ? EdgeInsets.zero
            : const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Center(
          child: SizedBox(
              height: SizeConfig.screenHeight!,
              width: width ?? SizeConfig.screenWidth! * 0.8,
              child: child),
        ),
      ),
    );
  }
}
