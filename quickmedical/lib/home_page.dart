import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quickmedical/container_color.dart';
import 'package:quickmedical/product-display.dart';
import 'package:quickmedical/product2_detail.dart';
import 'package:quickmedical/product_detail.dart';
import 'package:quickmedical/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 246, 246),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(220),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff4157FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: InkWell(
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('home/profile.jpg'),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Profile()));
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.notification_add_outlined,
                            size: 25,
                            color: Colors.white,
                          ),
                          SizedBox(width: 20),
                          Icon(
                            Icons.shopping_bag_outlined,
                            size: 25,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text(
                        "Hi, Ali Ammar",
                        style: TextStyle(
                            fontSize: 24,
                            color: Color(0xffFFFFFFF),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text("Welcome to  Quick Medical Store",
                          style: TextStyle(
                              fontSize: 16, color: Color(0xffFFFFFFF))),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  width: 330,
                  height: 54,
                  child: TextField(
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff090F4773).withOpacity(0.8),
                    ),
                    decoration: InputDecoration(
                        hintText: 'Search Medicine & Healthcare products',
                        hintStyle: TextStyle(
                          color: Color(0xff090F4773).withOpacity(0.45),
                          fontSize: 15,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        prefixIcon: Icon(Icons.search),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                "Top Categories",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff090F47)),
              ),
            ),
            Row(children: [
              SizedBox(
                width: 15,
              ),
              container(Color(0xffFF9598), Color(0xffFF70A7), "Dental"),
              container(Color(0xff19E5A5), Color(0xff15BD92), "Wellness"),
              container(Color(0xffFFC06F), Color(0xffFF793A), "Homeo"),
              container(Color(0xff4DB7FF), Color(0xff3E7DFF), "Eye care"),
            ]),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 10),
                width: 327,
                height: 146,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("home/Group3619.png"))),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    "Deals of the Day",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff090F47)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 170, top: 20),
                  child: Text(
                    "More",
                    style: TextStyle(fontSize: 14, color: Color(0xff006AFF)),
                  ),
                )
              ],
            ),
            Row(
              children: [
                InkWell(
                  child: ProductDisplay(
                      photo: AssetImage("home/product.png"),
                      text: "Accu-check Active",
                      subtext: 'TEST STRIP',
                      price: "Rs.112"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Product2Detail()));
                  },
                ),
                InkWell(
                  child: ProductDisplay(
                      photo: AssetImage("home/group3666.png"),
                      text: "Accu-check Active",
                      subtext: 'TEST STRIP',
                      price: "Rs.112"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetail()));
                  },
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                  child: ProductDisplay(
                      photo: AssetImage("home/product.png"),
                      text: "Accu-check Active",
                      subtext: 'TEST STRIP',
                      price: "Rs.112"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Product2Detail()));
                  },
                ),
                InkWell(
                  child: ProductDisplay(
                      photo: AssetImage("home/group3666.png"),
                      text: "Accu-check Active",
                      subtext: 'TEST STRIP',
                      price: "Rs.112"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetail()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
