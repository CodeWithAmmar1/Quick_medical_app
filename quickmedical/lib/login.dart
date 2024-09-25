import 'package:flutter/material.dart';
import 'package:quickmedical/home_page.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: 200,
              child: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("home/logo.png"))),
              ),
            ),
            Container(
              child: Text(
                "Quick Medical",
                style: TextStyle(
                    fontSize: 28,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Container(
                height: 48,
                width: 299,
                child: Text(
                  "Please Enter your Mobile Number \n to Login/Sign Up",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                )),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 299,
              height: 44,
              child: TextField(
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                    hintText: '+91 9265614292',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 24,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 330.6,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff4157FF),
                  padding: EdgeInsets.symmetric(vertical: 12),
                ),
                child: Text(
                  "CONTINUE",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
