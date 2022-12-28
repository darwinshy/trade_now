import 'package:flutter/material.dart';

class LoginTnCPnP extends StatelessWidget {
  const LoginTnCPnP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Terms and Conditions',
            style: TextStyle(color: Colors.grey, fontSize: 10),
          ),
          Text(
            'Privacy Policy',
            style: TextStyle(color: Colors.grey, fontSize: 10),
          ),
        ],
      ),
    );
  }
}
