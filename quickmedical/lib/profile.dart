import 'package:flutter/material.dart';
import 'package:quickmedical/profile_widget.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(20),
          width: 95,
          height: 25,
          child: Text(
            "My Profile ",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff090F47)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.all(15),
          child: Row(
            children: [
              Container(
                  width: 73.59,
                  height: 72,
                  child: Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(
                          0xff4157FF,
                        ),
                        width: 2,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage("home/profile.jpg"),
                    ),
                  )),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.only(top: 10),
                width: 258,
                height: 64,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, Ali Ammar",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff091C3F73).withOpacity(0.7),
                          fontWeight: FontWeight.bold),
                    ),
                    Text("Welcome to  Quick Medical Store",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff091C3F73).withOpacity(0.7))),
                  ],
                ),
              ),
            ],
          ),
        ),
        ProfileWidget(
            Heading: "Edit Profile",
            Symbol: Icon(
              Icons.account_circle,
              color: Color(
                0xff4157FF,
              ),
            )),
        ProfileWidget(
            Heading: "My orders",
            Symbol: Icon(
              Icons.description_outlined,
              color: Color(
                0xff4157FF,
              ),
            )),
        ProfileWidget(
            Heading: "Billing",
            Symbol: Icon(
              Icons.access_time_outlined,
              color: Color(
                0xff4157FF,
              ),
            )),
        ProfileWidget(
            Heading: "FAQ",
            Symbol: Icon(
              Icons.help_outline,
              color: Color(
                0xff4157FF,
              ),
            )),
      ],
    ));
  }
}
