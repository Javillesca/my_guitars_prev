import 'package:flutter/material.dart';

class ShoeDesc extends StatelessWidget {
  final String title;
  final String description;

  ShoeDesc({
    @required this.title,
    @required this.description
  });

  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 10),
          Text(
            this.title,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700
            ),
          ),
          SizedBox(height: 10),
          Text(
            this.description,
            style: TextStyle(
              color: Colors.black54, height: 1.5
            ),
          )
        ]),
    );
  }
}