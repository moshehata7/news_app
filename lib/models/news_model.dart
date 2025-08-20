class NewsModel {
  String? image;
  String? title;
  String? subTitle;

  NewsModel.fromJson(Map<String, dynamic> json) {
    image = json["articles"]["urlToImage"];
    title = json["articles"]["title"];
    subTitle = json["articles"]["description"];
  }
}
