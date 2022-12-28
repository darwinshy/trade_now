import 'package:flutter/material.dart';
import 'package:justanapp/app/app.size.dart';
import 'package:lottie/lottie.dart';

class LoginArt extends StatelessWidget {
  const LoginArt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.001),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.1)),
        ],
      ),
      child: Center(
        child: Lottie.asset('assets/images/127883-turkey.json',
            width: getProportionateScreenWidth(100)),
      ),
    );
  }
}
