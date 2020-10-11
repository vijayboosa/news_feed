import 'package:flutter/material.dart';

class CategoriresRowWidget extends StatelessWidget {
  final List<Map<String, dynamic>> _cat = [
    {'name': 'Latest', 'isSelected': false},
    {'name': 'Trending', 'isSelected': false},
    {'name': 'Fashion', 'isSelected': true},
    {'name': 'Technology', 'isSelected': false},
    {'name': 'LifeStyle', 'isSelected': false},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext ctx, int index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              _cat[index]['name'],
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
            ),
            _cat[index]['isSelected']
                ? DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.blue,
                    ),
                    child: SizedBox(
                      width: 10.0,
                      height: 10.0,
                    ),
                  )
                : Container(),
          ],
        );
      },
      itemCount: _cat.length,
      scrollDirection: Axis.horizontal,
      separatorBuilder: (BuildContext ctx, int index) => SizedBox(width: 20.0),
    );
  }
}
