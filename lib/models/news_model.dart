class NewsModel {
  String? image;
  String? title;
  String? subTitle;

  NewsModel.fromJson(Map<String, dynamic> json) {
    image = json["urlToImage"];
    title = json["title"];
    subTitle = json["description"];
  }
}
