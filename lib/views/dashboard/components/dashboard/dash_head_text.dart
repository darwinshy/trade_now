import 'package:flutter/material.dart';

class DashboardHeadText extends StatelessWidget {
  const DashboardHeadText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('12,333.12',
                style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold)),
            Container(
              margin: const EdgeInsets.only(top: 15, left: 10),
              child: const Text('INR', style: TextStyle(color: Colors.grey)),
            ),
          ],
        ),
        const Text('+ 1.23% (INR) Today',
            style: TextStyle(fontSize: 14, color: Colors.green)),
      ],
    );
  }
}
