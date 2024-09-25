import 'package:flutter/material.dart';
import 'package:quickmedical/cart_container.dart';
import 'package:quickmedical/order_place.dart';
import 'package:quickmedical/product_detail.dart';


class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetail()));
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Your Cart",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "2 Items in your cart",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff090F4773).withOpacity(0.7)),
                ),
                SizedBox(
                  width: 140,
                ),
                Icon(
                  Icons.add,
                  color: Color(0xff4157FF),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Add more",
                  style: TextStyle(fontSize: 14, color: Color(0xff4157FF)),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            CartContainer(
                display: AssetImage("home/MaskGroup.png"),
                head: "Sugar free gold",
                subHead: "bottle of 500 pellets",
                price: "Rs.25"),
            CartContainer(
                display: AssetImage("home/image135.png"),
                head: "Sugar free gold",
                subHead: "bottle of 500 pellets",
                price: "Rs.18"),
            SizedBox(
              height: 130,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Payment Summary",
                        style: TextStyle(
                            color: Color(0xff090F47),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 30, right: 20),
                    leading: Text(
                      "Order Total",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff090F4773).withOpacity(0.45),
                      ),
                    ),
                    trailing: Text(
                      "228.80",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff090F47),
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 30, right: 20),
                    leading: Text(
                      "Items Discount",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff090F4773).withOpacity(0.45),
                      ),
                    ),
                    trailing: Text(
                      "- 28.80",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff090F47),
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 30, right: 20),
                    leading: Text(
                      "Coupon Discount",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff090F4773).withOpacity(0.45),
                      ),
                    ),
                    trailing: Text(
                      "-15.80",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff090F47),
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 30, right: 20),
                    leading: Text(
                      "Shipping",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff090F4773).withOpacity(0.45),
                      ),
                    ),
                    trailing: Text(
                      "Free",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff090F47),
                      ),
                    ),
                  ),
                  Container(
                    width: 400,
                    decoration: BoxDecoration(
                        border: BorderDirectional(
                      bottom: BorderSide(
                          width: 1, color: Colors.grey.withOpacity(0.5)),
                    )),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 30, right: 20),
                    leading: Text(
                      "Total",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff090F47),
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      "Rs.185.00",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff090F47),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 330.6,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderSuccessPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff4157FF),
                        padding: EdgeInsets.symmetric(vertical: 12),
                      ),
                      child: Text(
                        "Place Order",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
