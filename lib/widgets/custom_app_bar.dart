import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/logo.png',
          scale: 8.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Text(
            'News Feed',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Spacer(),
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/profile_image.jpeg'),
        ),
      ],
    );
  }
}
