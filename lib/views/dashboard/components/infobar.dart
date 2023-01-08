import 'package:flutter/cupertino.dart';
import 'package:justanapp/views/dashboard/components/info_tab/infotab.dart';
import 'package:justanapp/views/dashboard/components/info_tab/infotab_action.dart';
import 'package:responsive_framework/responsive_framework.dart';

class InfoBar extends StatelessWidget {
  const InfoBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool? isDesktop = ResponsiveWrapper.of(context).isDesktop;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Flex(
        direction: isDesktop ? Axis.vertical : Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [InfoTab(), InfoActionTab()],
      ),
    );
  }
}
