import 'package:flutter/material.dart';

class SideBarItem extends StatefulWidget {
  const SideBarItem({
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
    required this.isSelected,
    required this.id,
  }) : super(key: key);

  final String id;
  final String text;
  final IconData icon;
  final bool isSelected;
  final void Function(String) press;

  @override
  State<SideBarItem> createState() => _SideBarItemState();
}

class _SideBarItemState extends State<SideBarItem> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => widget.press(widget.id),
      style: ButtonStyle(
        backgroundColor: widget.isSelected
            ? MaterialStateProperty.all(
                Theme.of(context).scaffoldBackgroundColor)
            : MaterialStateProperty.all(Colors.transparent),
        padding: MaterialStateProperty.all(EdgeInsets.zero),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Icon(
              widget.icon,
              color: widget.isSelected
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).backgroundColor.withOpacity(0.3),
              size: 14,
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                widget.text,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w900,
                  color: widget.isSelected
                      ? Theme.of(context).backgroundColor.withOpacity(0.7)
                      : Theme.of(context).backgroundColor.withOpacity(0.4),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
