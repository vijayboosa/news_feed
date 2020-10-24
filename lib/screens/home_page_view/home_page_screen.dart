import 'package:flutter/material.dart';
import 'package:news_feed/models/news_article.dart';
import 'package:news_feed/screens/home_page_view/news_card/news_card.dart';
import 'package:news_feed/screens/home_page_view/widgets/categories_row_widget.dart';
import 'package:news_feed/screens/home_page_view/widgets/text_field_widget.dart';
import 'package:news_feed/widgets/custom_app_bar.dart';

class HomePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          CustomAppBarWidget(),
          SearcNewsTextFieldWidget(),
          SizedBox(
            height: 40.0,
            child: CategoriresRowWidget(),
          ),
          Expanded(
              child: ListView(
            children: [
              _newsCardBuild(
                  newsArticle: NewsArticleModel(
                imageUrl: 'assets/images/apple_lap.jpg',
                newsHeadline:
                    'How Corona Virus could change the plane Boarding.',
                listcategories: ['Travel', 'World'],
              )),
              _newsCardBuild(
                newsArticle: NewsArticleModel(
                  imageUrl: 'assets/images/london_street.jpg',
                  newsHeadline: 'Riding a bike is being a trend today',
                  listcategories: ['Nature'],
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }

  Padding _newsCardBuild({@required NewsArticleModel newsArticle}) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: SizedBox(
        child: NewsCardWidget(
          newsArticle: newsArticle,
        ),
        height: 140.0,
        width: double.infinity,
      ),
    );
  }
}
