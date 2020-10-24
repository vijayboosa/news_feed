import 'package:flutter/material.dart';
import 'package:news_feed/screens/categorie_page_view/categorie_card_widget.dart';

class CategorieCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _pageAppBar(),
        CategorieCardWidget(),
      ],
    );
  }

  Widget _pageAppBar() {
    return Row(
      children: [
        Text('Categories', style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.w700),),
        Spacer(),
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/profile_image.jpeg',),
        ),
      ],
    );
  }
}
