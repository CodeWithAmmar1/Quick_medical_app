import 'package:flutter/material.dart';
import 'package:quickmedical/cart.dart';
import 'package:quickmedical/home_page.dart';
import 'package:quickmedical/product_container.dart';
import 'package:quickmedical/rating.dart';

class Product2Detail extends StatelessWidget {
  const Product2Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                Padding(padding: EdgeInsets.only(left: 280)),
                Icon(Icons.notification_add_outlined),
                Padding(padding: EdgeInsets.only(left: 20)),
                Icon(Icons.shopping_bag_outlined),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Sugar Free Gold Low Calories",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff090F47)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Etiam mollis metus non purus ",
                style: TextStyle(
                    fontSize: 14, color: Color(0xff090F47).withOpacity(0.45)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      width: 364,
                      height: 166,
                      child: Image.asset(
                        "home/product.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      width: 364,
                      height: 166,
                      child: Image.asset(
                        "home/group33.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      width: 364,
                      height: 166,
                      child: Image.asset(
                        "home/product.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
                child: Icon(
              Icons.more_horiz,
              size: 40,
              color: Colors.grey,
            )),
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25, top: 20),
                    child: Text(
                      "Rs.99",
                      style: TextStyle(
                          fontSize: 18,
                          decoration: TextDecoration.lineThrough,
                          color: Color(0xff090F4780).withOpacity(0.5)),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Rs.56",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 160, right: 10, top: 30),
                    child: Icon(
                      Icons.add_box_outlined,
                      color: Color(0xff006AFF),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 32),
                      child: Text(
                        "Add to cart",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff006AFF)),
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Text(
                "Etiam mollis ",
                style: TextStyle(
                    fontSize: 16, color: Color(0xff090F47B2).withOpacity(0.7)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 30),
              width: 360,
              decoration: BoxDecoration(
                  border: BorderDirectional(
                      bottom: BorderSide(width: 1, color: Colors.grey))),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Text(
                "Package size",
                style: TextStyle(
                    color: Color(0xff090F47),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                ProductContainer(
                    color: Color(0xffFFA41B).withOpacity(0.2),
                    text: "Rs.106",
                    textColor: Color(0xffFFA41B),
                    subtext: "500 pellets",
                    subtextColor: Color(0xffFFA41B)),
                ProductContainer(
                    color: Color(0xff090F47).withOpacity(0.1),
                    text: "Rs.166",
                    textColor: Color(0xff090F47),
                    subtext: "110 pellets",
                    subtextColor: Color(0xff090F47)),
                ProductContainer(
                    color: Color(0xff090F47).withOpacity(0.1),
                    text: "Rs.106",
                    textColor: Color(0xff090F47),
                    subtext: "500 pellets",
                    subtextColor: Color(0xff090F47)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "Package size",
                    style: TextStyle(
                        color: Color(0xff090F47),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 20),
                  child: Text(
                    "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit",
                    style: TextStyle(
                      color: Color(0xff090F47).withOpacity(0.4),
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "Ingredients",
                    style: TextStyle(
                        color: Color(0xff090F47),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 20),
                  child: Text(
                    "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit",
                    style: TextStyle(
                      color: Color(0xff090F47).withOpacity(0.4),
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "Expiry Date",
                    style: TextStyle(
                        color: Color(0xff090F47),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "25/12/2023",
                    style: TextStyle(
                        color: Color(0xff090F47).withOpacity(0.4),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "Brand Name",
                    style: TextStyle(
                        color: Color(0xff090F47),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "Something",
                    style: TextStyle(
                        color: Color(0xff090F47).withOpacity(0.4),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          child: Text(
                            "4.4",
                            style: TextStyle(
                                fontSize: 33, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.star,
                                color: Color(0xffFFC000),
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        "923 Ratings\nand 257 Reviews",
                        style: TextStyle(
                            color: Color(0xff090F47).withOpacity(0.4),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 40, bottom: 10, top: 10),
                  height: 90,
                  color: Color(0xff090F47).withOpacity(0.4),
                  width: 2,
                ),
                Column(
                  children: [
                    Star("4"),
                    Star("4"),
                    Star("3"),
                    Star("2"),
                    Star("1"),
                  ],
                ),
                Column(
                  children: [
                    line(Color(0xff4157FF), Color(0xff4157FF),
                        Color(0xff4157FF)),
                    line(Color(0xff4157FF), Color(0xff4157FF),
                        Color(0xff4157FF)),
                    line(Color(0xff4157FF), Color(0xff4157FF),
                        Color(0xff4157FF).withOpacity(0.45)),
                    line(Color(0xff4157FF), Color(0xff4157FF),
                        Color(0xff4157FF).withOpacity(0.45)),
                    line(Color(0xff4157FF), Color(0xff4157FF).withOpacity(0.45),
                        Color(0xff4157FF).withOpacity(0.45)),
                  ],
                ),
                Column(
                  children: [
                    textRating("67%"),
                    textRating("60%"),
                    textRating("20%"),
                    textRating("19%"),
                    textRating("0%"),
                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 30),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xffFFD040),
                    size: 15,
                  ),
                  Text(
                    "4.2",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff090F4773).withOpacity(0.45)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 240),
                    child: Text(
                      "05- oct 2020",
                      style: TextStyle(
                        color: Color(0xff090F47).withOpacity(0.4),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Text(
                "Ingredients",
                style: TextStyle(
                    color: Color(0xff090F47),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 20),
              child: Text(
                "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit",
                style: TextStyle(
                  color: Color(0xff090F47).withOpacity(0.4),
                  fontSize: 12,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 40),
                width: 330.6,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff4157FF),
                    padding: EdgeInsets.symmetric(vertical: 12),
                  ),
                  child: Text(
                    "Go To Cart",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
