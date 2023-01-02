import 'package:flutter/material.dart';
import 'package:justanapp/widget/button.dart';

class DasbboardTitleBar extends StatelessWidget {
  const DasbboardTitleBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Zomato Stock',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Row(
              children: [
                IconButton(
                  splashRadius: IconTheme.of(context).size! * 0.6,
                  onPressed: () {},
                  icon: Icon(Icons.notification_add,
                      color: Theme.of(context).primaryColor.withOpacity(0.2)),
                ),
                const SizedBox(width: 10),
                IconButton(
                  splashRadius: IconTheme.of(context).size! * 0.6,
                  onPressed: () {},
                  icon: Icon(
                    Icons.help,
                    color: Theme.of(context).primaryColor.withOpacity(0.2),
                  ),
                ),
              ],
            ),
            SizedBox(width: width * 0.02),
            RoundedTextButton(
              text: 'Add to Watchlist',
              fontSize: 12,
              isLoading: false,
              press: () {},
              color: Theme.of(context).primaryColor.withOpacity(0.1),
              fontColor: Theme.of(context).primaryColor,
            ),
          ],
        )
      ],
    );
  }
}
