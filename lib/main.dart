import 'package:flutter/material.dart';
import 'package:flutterando_masterclass_mockup/components/custom_button.dart';
import 'package:flutterando_masterclass_mockup/components/custom_text_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projeto 0',
      home: HomeScreenPage(),
    );
  }
}

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            'assets/images/logo.png',
            height: 90,
          ),
          SizedBox(height: 30),
          Text('Get your Money',
              style: TextStyle(color: Colors.white, fontSize: 30)),
          Text('Under Control',
              style: TextStyle(color: Colors.white, fontSize: 30)),
          SizedBox(height: 10),
          Text('Manage your expenses.',
              style: TextStyle(color: Colors.white, fontSize: 20)),
          Text('Seamlessly',
              style: TextStyle(color: Colors.white, fontSize: 20)),
          SizedBox(height: 120),
          CustomButton(
            color: Color.fromRGBO(76, 73, 182, 100),
            text: 'Sign Up with Email ID',
            textStyle: TextStyle(color: Colors.white, fontSize: 16),
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
    );
  }
}
