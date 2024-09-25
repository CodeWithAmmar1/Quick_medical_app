import 'package:flutter/material.dart';

Widget Star(
  String text,
) {
  return Container(
    margin: EdgeInsets.only(left: 10),
    child: Row(
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 14, color: Color(0xff090F4773).withOpacity(0.45)),
        ),
        Icon(
          Icons.star,
          color: Color(0xffFFD040),
          size: 14,
        )
      ],
    ),
  );
}

Widget line(
  Color color1,
  Color color2,
  Color color3,
) {
  return Container(
    margin: EdgeInsets.all(6),
    child: Row(
      children: [
        Container(
          width: 40,
          height: 8,
          decoration: BoxDecoration(
            color: color1,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5), // Radius for the top-left corner
              bottomLeft: Radius.circular(5),
            ),
          ),
        ),
        Container(
          width: 50,
          height: 8,
          decoration: BoxDecoration(
            color: color2,
          ),
        ),
        Container(
          width: 40,
          height: 8,
          decoration: BoxDecoration(
            color: color3,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),
          ),
        )
      ],
    ),
  );
}

Widget textRating(String text) {
  return Container(
    margin: EdgeInsets.only(right: 20),
    child: Text(
      text,
      style:
          TextStyle(fontSize: 15, color: Color(0xff090F4773).withOpacity(0.45)),
    ),
  );
}
//  