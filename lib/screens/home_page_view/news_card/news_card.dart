import 'package:flutter/material.dart';

class NewsCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DecoratedBox(
          child: SizedBox(
            child: Image.asset(
              'assets/images/apple_lap.jpg',
              fit: BoxFit.cover,
            ),
            height: 150,
            width: 150,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
