class NewsModel {
  final String image;
  final String title;
  final String subTitle;
  NewsModel({required this.image, required this.title, required this.subTitle});

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      image: json["urlToImage"] ?? "",
      title: json["title"] ?? "",
      subTitle: json["description"]?? "",
    );
  }
}
