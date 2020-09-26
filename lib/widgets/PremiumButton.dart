import 'package:flutter/material.dart';

class PremiumButton extends StatelessWidget {
  String text1;
  PremiumButton(this.text1);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.grey[100],
      ),
      child: Center(
          child: Text(
        text1,
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
    );
  }
}
