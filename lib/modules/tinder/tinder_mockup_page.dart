import 'package:flutter/material.dart';
import 'package:flutterando_masterclass_mockup/components/custom_terms.dart';

class TinderMockupPage extends StatefulWidget {
  const TinderMockupPage({Key? key}) : super(key: key);

  @override
  State<TinderMockupPage> createState() => _TinderMockupPageState();
}

class _TinderMockupPageState extends State<TinderMockupPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        backgroundColor: Color.fromARGB(235, 185, 95, 145),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo_white_tinder.png', height: 40),
                SizedBox(width: 10),
                Image.asset('assets/images/text_tinder_logo.png', height: 40),
              ],
            ),
            SizedBox(height: 50),
            CustomTermsUserTinder(),
            
          ],
        ),
      ),
    );
  }
}
