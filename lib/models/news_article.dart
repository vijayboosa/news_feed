class NewsArticleModel {
  final String newsHeadline;
  final String imageUrl;
  final List<String> listcategories;

  NewsArticleModel({this.newsHeadline, this.imageUrl, this.listcategories});
}

// List<NewsArticleModel> listOfModels = [
//   NewsArticleModel(
//     imageUrl: 'assets/images/london_street.jpg',
//     newsHeadline: 'Riding a bike is being a trend today',
//     listcategories: ['Nature'],
//   ),
//   NewsArticleModel(
//     imageUrl: 'assets/images/apple_lap.jpg',
//     newsHeadline: 'How Corona Virus could change the plane Boarding.',
//     listcategories: ['Travel', 'World'],
//   ),
// ];
