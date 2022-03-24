import 'package:flutter/material.dart';
import 'package:flutterando_masterclass_mockup/components/custom_button.dart';
import 'package:flutterando_masterclass_mockup/components/custom_text_button.dart';

class FirstMockup extends StatefulWidget {
  const FirstMockup({Key? key}) : super(key: key);

  @override
  State<FirstMockup> createState() => _FirstMockupState();
}

class _FirstMockupState extends State<FirstMockup> {
  static TextStyle textStyleCustom30 =
      TextStyle(color: Colors.white, fontSize: 30);
  static TextStyle textStyleCustom20 =
      TextStyle(color: Colors.white, fontSize: 20);
  static TextStyle textStyleCustom16 =
      TextStyle(color: Colors.white, fontSize: 16);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 90,
            ),
            SizedBox(height: 30),
            Text('Get your Money', style: textStyleCustom30),
            Text('Under Control', style: textStyleCustom30),
            SizedBox(height: 10),
            Text('Manage your expenses.', style: textStyleCustom20),
            Text('Seamlessly', style: textStyleCustom20),
            SizedBox(height: 120),
            CustomButton(
              color: Color.fromRGBO(76, 73, 182, 100),
              text: 'Sign Up with Email ID',
              textStyle: textStyleCustom16,
            ),
            CustomButton(
              icon: Image.asset('assets/icons/google_icon.png', height: 26),
              sizedBox: SizedBox(width: 5),
              color: Colors.white,
              text: 'Sign Up with Google',
              textStyle: TextStyle(color: Colors.black, fontSize: 16),
            ),
            SizedBox(height: 46),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account?',
                    style: TextStyle(color: Colors.white, fontSize: 14)),
                SizedBox(width: 5),
                CustomTextButton(
                  text: 'Sign In',
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      decoration: TextDecoration.underline),
                )
              ],
            ),
            SizedBox(height: 46),
          ],
        ),
      ),
    );
  }
}
