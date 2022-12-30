import 'package:flutter/material.dart';

class RoundedTextButton extends StatelessWidget {
  const RoundedTextButton({
    Key? key,
    this.text,
    this.fontSize,
    this.child,
    this.press,
    this.color,
    this.width,
    this.height,
    required this.isLoading,
    this.fontColor,
  }) : super(key: key);

  final String? text;
  final Function()? press;
  final double? fontSize;
  final bool isLoading;
  final Widget? child;
  final Color? color;
  final double? width;
  final double? height;
  final Color? fontColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: press,
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: color ?? Theme.of(context).primaryColor.withOpacity(0.8),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: !isLoading
              ? child ??
                  Text(
                    text!,
                    style: TextStyle(
                        fontSize: fontSize, color: fontColor ?? Colors.white),
                  )
              : const SizedBox(
                  height: 10,
                  width: 10,
                  child: CircularProgressIndicator(
                      color: Colors.white, strokeWidth: 2),
                ),
        ),
      ),
    );
  }
}
