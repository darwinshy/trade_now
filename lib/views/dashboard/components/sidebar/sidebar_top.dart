import 'package:flutter/material.dart';
import 'package:justanapp/widget/button.dart';

class SideBarTop extends StatelessWidget {
  const SideBarTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                text: 'TRADE ',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    color: Theme.of(context).primaryColor),
                children: const <TextSpan>[
                  TextSpan(
                      text: 'STOCKS',
                      style: TextStyle(fontWeight: FontWeight.normal)),
                ],
              ),
            ),
            Icon(
              Icons.price_check_outlined,
              color: Theme.of(context).primaryColor,
            )
          ],
        ),
        const SizedBox(height: 20),
        RoundedTextButton(text: 'Quick Invest', press: () {}, isLoading: false),
      ],
    );
  }
}
