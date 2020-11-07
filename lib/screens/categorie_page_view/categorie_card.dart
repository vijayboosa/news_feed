import 'package:flutter/material.dart';
import 'package:news_feed/screens/categorie_page_view/categorie_card_widget.dart';

class CategorieCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: _pageAppBar(),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0),
            child: CategorieCardWidget(),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0),
            child: CategorieCardWidget(),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0),
            child: CategorieCardWidget(),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0),
            child: CategorieCardWidget(),
          ),
        ],
      ),
    );
  }

  Widget _pageAppBar() {
    return Row(
      children: [
        Text(
          'Categories',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
        ),
        Spacer(),
        CircleAvatar(
          backgroundImage: AssetImage(
            'assets/images/profile_image.jpeg',
          ),
        ),
      ],
    );
  }
}
