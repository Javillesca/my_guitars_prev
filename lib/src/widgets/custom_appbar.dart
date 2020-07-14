import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {

  final String title;

  CustomAppBar({ this.title });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 10),
          child: Row(
            children: <Widget>[
              Text(
                this.title, 
                style: TextStyle(
                  fontSize: 25, 
                  fontWeight: FontWeight.w700
                ),
              ),
              Spacer(),
              Icon(Icons.search, size: 25)
            ],
          ),
        ),
      ),
    );
  }
}