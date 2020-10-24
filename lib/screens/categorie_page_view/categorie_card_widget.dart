import 'package:flutter/material.dart';

class CategorieCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300.0,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),),
      // color: Colors.blue,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Stack(children: [
          Image.asset(
            'assets/images/lifestyle.jpg',
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0.0,
            child: Row(
              children: [
                Text('LifeStyle'),
                Spacer(),
                Text('234 News'),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
