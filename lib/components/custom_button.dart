
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final Widget? icon;
  final Widget? sizedBox;
  final String text;
  final TextStyle textStyle;

  CustomButton(
      {required this.color,
      this.icon,
      this.sizedBox,
      required this.text,
      required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('Clickado');
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: color,
          ),
          height: 50,
          width: double.infinity,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon ?? SizedBox(),
                sizedBox ?? SizedBox(),
                Text(
                  text,
                  style: textStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}