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
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            height: MediaQuery.of(context).size.height -
                (MediaQuery.of(context).viewPadding.bottom +
                    MediaQuery.of(context).viewPadding.top),
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
