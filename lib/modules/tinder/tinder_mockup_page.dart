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
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.keyboard_arrow_left_sharp,
              size: 35,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Color.fromARGB(255, 224, 77, 163),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo_white_tinder.png', height: 40),
                SizedBox(width: 10),
                Image.asset('assets/images/text_tinder_logo.png', height: 40),
              ],
            ),
            SizedBox(height: 110),
            CustomTermsUserTinder(),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/apple_icon.png',
                          height: 20,
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Text(
                          'SIGN IN WITH APPLE',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/facebook.png',
                          height: 20,
                        ),
                        SizedBox(width: 70),
                        Text(
                          'SIGN IN WITH FACEBOOK',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/sms.png',
                          height: 20,
                        ),
                        SizedBox(width: 50),
                        Text(
                          'SIGN IN WITH PHONE NUMBER',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Trouble Signing In?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
