import 'package:flutter/material.dart';
import 'package:justanapp/app/app.size.dart';
import 'package:justanapp/widget/drawer.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key, required this.child, this.backgroundColor})
      : super(key: key);

  final Widget child;
  final Color? backgroundColor;

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          widget.backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
      // appBar: AppBar(
      //     leading: Navigator.canPop(context)
      //         ? IconButton(
      //             icon: const Icon(Icons.arrow_back_ios),
      //             onPressed: () => Navigator.pop(context),
      //           )
      //         : null),
      drawer: const SideDrawer(),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 10, vertical: 80),
        child: Center(
            child: SizedBox(
                width: SizeConfig.screenWidth! * 0.8, child: widget.child)),
      ),
    );
  }
}
