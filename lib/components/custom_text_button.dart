import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;

  CustomTextButton({required this.text, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('Clickado');
      },
      child: Text(text, style: textStyle),
    );
  }
}