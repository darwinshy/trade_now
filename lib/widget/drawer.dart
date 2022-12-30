import 'package:flutter/material.dart';

List<IconButton> drawerItems = <IconButton>[
  IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
  IconButton(onPressed: () {}, icon: const Icon(Icons.info_outline)),
  IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
];

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width * 0.04,
      height: 200,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        elevation: 0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: drawerItems,
        ),
      ),
    );
  }
}
