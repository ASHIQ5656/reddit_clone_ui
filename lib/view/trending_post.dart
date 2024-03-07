class TrendingPost {
  final String imagepath;
  final String title;

  TrendingPost({
    required this.imagepath,
    required this.title,
  });
  static List<TrendingPost> trendingpost = [
    TrendingPost(imagepath: "assets/images/picture 1.jpg", title: "ISRO"),
    TrendingPost(imagepath: "assets/images/picture 2", title: "Socail Media"),
    TrendingPost(imagepath: "assets/images/picture 3.jpg", title: "Google"),
    TrendingPost(
        imagepath: "assets/images/picture 4.jpg", title: "Youth Festvel"),
  ];
}
