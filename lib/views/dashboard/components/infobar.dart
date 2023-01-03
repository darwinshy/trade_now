import 'package:flutter/cupertino.dart';
import 'package:justanapp/views/dashboard/components/info_tab/infotab.dart';
import 'package:justanapp/views/dashboard/components/info_tab/infotab_action.dart';

class InfoBar extends StatelessWidget {
  const InfoBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const InfoTab(),
        SizedBox(height: height * 0.04),
        const InfoActionTab()
      ],
    );
  }
}
