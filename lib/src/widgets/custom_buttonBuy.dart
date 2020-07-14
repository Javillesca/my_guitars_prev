import 'package:flutter/material.dart';

class CustomButtonBuy extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final Color color;

  CustomButtonBuy({
    @required this.text,
    this.height = 50,
    this.width = 150,
    this.color = Colors.orangeAccent
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: this.width,
      height: this.height,
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: this.color,
      ),
      child: Text(
        '$text',
        style: TextStyle(
          color: Colors.white
        ),
      ),
    );
  }
}