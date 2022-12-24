import 'package:flutter/material.dart';
import 'package:justanapp/app/app.size.dart';

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
          minimum: const EdgeInsets.symmetric(vertical: 10),
          child: SizedBox(
            width: double.infinity,
            height: SizeConfig.screenHeight! -
                (MediaQuery.of(context).viewPadding.bottom +
                    MediaQuery.of(context).viewPadding.top),
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
