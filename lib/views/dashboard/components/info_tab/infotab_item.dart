import 'package:flutter/material.dart';

class InfoTabItem extends StatelessWidget {
  const InfoTabItem({Key? key, required this.title, required this.value})
      : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold))
      ],
    );
  }
}
