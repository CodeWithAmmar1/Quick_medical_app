import 'package:flutter/material.dart';

class ProductDisplay extends StatelessWidget {
  final AssetImage photo;
  final String text;
  final String subtext;
  final String price;

  const ProductDisplay({
    super.key,
    required this.photo,
    required this.text,
    required this.subtext,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: 160,
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 150,
              height: 140,
              decoration: BoxDecoration(
                image: DecorationImage(image: photo, fit: BoxFit.contain),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 5),
            child: Text(
              text,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 5),
            child: Text(
              subtext,
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            child: Text(
              price,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 120,
            ),
            width: 40,
            height: 20,
            decoration: BoxDecoration(
                color: Color(0xffFFC000),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                )),
            child: Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.star,
                  color: const Color.fromARGB(255, 255, 244, 210),
                  size: 15,
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "2",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 255, 244, 210),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
