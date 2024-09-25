import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String Heading;
  final Widget Symbol;

  const ProfileWidget({super.key, required this.Heading, required this.Symbol});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: BorderDirectional(
            bottom: BorderSide(
          width: 1,
          color: Colors.grey.withOpacity(0.2),
        )),
      ),
      child: ListTile(
        leading: Symbol,
        title: Text(
          Heading,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color(0xff091C3F73).withOpacity(0.7)),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 12,
        ),
      ),
    );
  }
}
