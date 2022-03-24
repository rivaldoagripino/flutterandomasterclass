import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomTermsUserTinder extends StatelessWidget {
  const CustomTermsUserTinder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'By tapping Create Account or Sign In, you agree to our ',
          children: <TextSpan>[
            TextSpan(
              text: 'Terms. ',
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
            TextSpan(
              text: 'Learn how we process your data in our ',
            ),
            TextSpan(
              recognizer: TapGestureRecognizer()..onTap =() {},
              text: 'Privacy Policy',
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
            TextSpan(
              text: ' and ',
            ),
            TextSpan(
              text: 'Cookies Policy',
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
