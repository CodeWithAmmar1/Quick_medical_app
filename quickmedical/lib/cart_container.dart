import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartContainer extends StatelessWidget {
  final AssetImage display;
  final String head;
  final String subHead;
  final String price;
  const CartContainer(
      {super.key,
      required this.display,
      required this.head,
      required this.subHead,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: BorderDirectional(
              bottom:
                  BorderSide(color: Colors.grey.withOpacity(0.2), width: 1))),
      child: Row(
        children: [
          SizedBox(
            width: 25,
          ),
          Container(
            margin: EdgeInsets.only(right: 5),
            width: 70,
            height: 80,
            decoration: BoxDecoration(
                image: DecorationImage(image: display, fit: BoxFit.cover)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                head,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                subHead,
                style: TextStyle(fontSize: 13),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                price,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            width: 100,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 40),
                child: Icon(
                  Icons.cancel_outlined,
                  color: Color(0xff00000040).withOpacity(0.25),
                ),
              ),
              Row(
                children: [
                  Container(
                    // margin: EdgeInsets.only(left: 20),
                    width: 70,
                    height: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF2F4FF),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.remove_circle,
                          size: 25,
                          color: Color(0xffDFE3FF),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text("1"),
                        SizedBox(
                          width: 6,
                        ),
                        Icon(
                          Icons.add_circle,
                          size: 25,
                          color: Color(0xffA0ABFF),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              )
            ],
          )
        ],
      ),
    );
  }
}
