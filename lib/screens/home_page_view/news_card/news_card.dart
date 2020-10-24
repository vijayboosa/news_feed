import 'package:flutter/material.dart';
import 'package:news_feed/models/news_article.dart';

class NewsCardWidget extends StatelessWidget {
  
  final NewsArticleModel newsArticle;

  const NewsCardWidget({Key key,@required this.newsArticle}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(18.0),
            child: Image.asset(
              this.newsArticle.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          height: 150,
          width: 150,
        ),
        SizedBox(width: 20.0,),
        Expanded(
          child: Container(
            // color:Colors.yellow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Text(
                this.newsArticle.newsHeadline,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: this.newsArticle.listcategories.map((e) => Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: _categoryTile(e),
                )).toList(),
              ),
            ]),
          ),
        ),
      ],
    );
  }

  Container _categoryTile(String catName) {
    return Container(
      child: Text(
        catName,
        style: TextStyle(color: Colors.blue, fontSize: 16.0),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        border: Border.all(color: Colors.blue, width: 2.0),
        borderRadius: BorderRadius.circular(6.0),
      ),
    );
  }
}
