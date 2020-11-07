import 'package:flutter/material.dart';

class CategorieCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      height: 200.0,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
          image: AssetImage('assets/images/lifestyle.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      // color: Colors.blue,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'LifeStyle',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Big Text',
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '458 News',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
