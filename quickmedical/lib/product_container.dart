import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  final Color color;

  final String text;
  final Color textColor;
  final String subtext;
  final Color subtextColor;
  const ProductContainer(
      {super.key,
      required this.color,
      required this.text,
      required this.textColor,
      required this.subtext,
      required this.subtextColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30),
      width: 79,
      height: 68,
      decoration: BoxDecoration(
          color: color,
          border: Border.all(width: 1, color: color),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 16, color: textColor, fontWeight: FontWeight.bold),
          ),
          Text(
            subtext,
            style: TextStyle(
              fontSize: 12,
              color: subtextColor,
            ),
          ),
        ],
      ),
    );
  }
}
