import 'package:flutter/material.dart';

class NumberCard extends StatelessWidget {
  final String number;
  final double width;

  NumberCard({this.number, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 70,
      child: Center(
        child: Text(
          '$number',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 30,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Color(0xffd6d6d6),
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            spreadRadius: 1,
            color: Color(0xffa9a9a9),
            offset: Offset(
              1,
              1,
            ),
          ),
          BoxShadow(
            blurRadius: 5,
            spreadRadius: 3,
            color: Color(0xffffffff),
            offset: Offset(
              -2,
              -2,
            ),
          ),
        ],
        gradient: LinearGradient(
          stops: [0, 1],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.white, Colors.white70],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            150,
          ),
        ),
      ),
    );
  }
}
