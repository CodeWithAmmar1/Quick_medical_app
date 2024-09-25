import 'package:flutter/material.dart';
import 'package:quickmedical/login.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(
        0xff4157FF,
      ),
      body: InkWell(
        child: Container(
          width: 468,
          height: 812,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("home/logo_background.png"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Color.fromARGB(255, 7, 3, 255).withOpacity(1),
              BlendMode.srcATop,
            ),
          )),
          child: Center(
            child: Container(
              width: 289,
              height: 125,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("home/logo_info.png")),
              ),
              padding: EdgeInsets.only(bottom: 50),
              child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("home/Vector.png")),
                  )),
            ),
          ),
        ),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Login()));
        },
      ),
    );
  }
}
