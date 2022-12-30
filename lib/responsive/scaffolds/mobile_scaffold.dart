import 'package:flutter/material.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    double appBarHeight = AppBar().preferredSize.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(height: height - appBarHeight, child: widget.child),
        ),
      ),
    );
  }
}
