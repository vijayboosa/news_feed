import 'package:flutter/material.dart';

class SearcNewsTextFieldWidget extends StatelessWidget {
  const SearcNewsTextFieldWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.green[50],
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          hintText: 'Search news here',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          suffixIcon: Icon(
            Icons.mic_none,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
