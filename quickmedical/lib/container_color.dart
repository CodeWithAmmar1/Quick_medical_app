import 'package:flutter/material.dart';

Widget container(Color color1, Color color2, String text) {
  return Container(
      margin: EdgeInsets.all(10),
      height: 120,
      width: 74,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.all(10),
              child: Container(
                width: 50,
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  gradient: LinearGradient(
                    colors: [color1, color2],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              )),
          Text(
            text,
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
          )
        ],
      ));
}
