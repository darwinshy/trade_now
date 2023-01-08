import 'package:flutter/material.dart';
import 'package:justanapp/views/dashboard/components/info_tab/infotab_item.dart';
import 'package:responsive_framework/responsive_framework.dart';

class InfoTab extends StatelessWidget {
  const InfoTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    bool? isDesktop = ResponsiveWrapper.of(context).isDesktop;
    return Container(
      width: isDesktop ? width * 0.2 : width * 0.3,
      height: isDesktop ? height * 0.3 : height * 0.4,
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [BoxShadow(color: Colors.grey)],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          InfoTabItem(title: 'Open', value: '100.324'),
          InfoTabItem(title: 'High', value: '100.324'),
          InfoTabItem(title: 'Low', value: '100.024'),
          InfoTabItem(title: 'Closed', value: '100.122'),
          InfoTabItem(title: 'Total', value: '100.324'),
        ],
      ),
    );
  }
}
