
import 'package:flutter/material.dart';

class CustomHomeAppsButton extends StatelessWidget {
  final Widget route;
  final String icon;
  final Widget? sizedBox;
  final String text;
  final TextStyle textStyle;

  CustomHomeAppsButton(
      {required this.route,
      required this.icon,
      this.sizedBox,
      required this.text,
      required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => route),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.black),
          height: 120,
          width: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                icon,
                height: 40,
                width: 40,
              ),
              sizedBox ?? SizedBox(),
              Align(
                alignment: Alignment.center,
                child: Text(
                  text,
                  style: textStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}