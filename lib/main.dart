import 'package:flutter/material.dart';
import 'package:flutterando_masterclass_mockup/components/custom_home_apps_button.dart';
import 'package:flutterando_masterclass_mockup/modules/first_mockup/first_mockup_page.dart';
import 'package:flutterando_masterclass_mockup/modules/movie_mockup/movie_mockup_page.dart';
import 'package:flutterando_masterclass_mockup/modules/tinder/tinder_mockup_page.dart';

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
      theme: ThemeData.dark(),
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
      backgroundColor: Color.fromARGB(255, 61, 57, 57),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Center(
          child: Text('MasterClass 3'),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        scrollDirection: Axis.vertical,
        children: [
          CustomHomeAppsButton(
            icon: 'assets/images/logo.png',
            route: FirstMockup(),
            text: 'First Mockup',
            textStyle: TextStyle(color: Colors.white, fontSize: 16),
            sizedBox: SizedBox(height: 10),
          ),
          CustomHomeAppsButton(
            icon: 'assets/images/tinder_logo.png',
            route: TinderMockupPage(),
            text: 'Tinder Mockup',
            textStyle: TextStyle(color: Colors.white, fontSize: 16),
            sizedBox: SizedBox(height: 10),
          ),
          CustomHomeAppsButton(
            icon: 'assets/images/tinder_logo.png',
            route: MovieMockupPage(),
            text: 'Movie Mockup',
            textStyle: TextStyle(color: Colors.white, fontSize: 16),
            sizedBox: SizedBox(height: 10),
          ),
        ],
      ),
    );
  }
}
