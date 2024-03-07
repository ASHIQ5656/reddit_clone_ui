import 'package:flutter/material.dart';

class Post {
  final int id;
  final String title;
  final String image;
  final String subReddit;

  final String upvotes;
  final String comments;
  final DateTime timeStamp;
  final String subRedditIcon;
  final Color subRedditColor;

  Post(
      {required this.id,
      required this.title,
      required this.image,
      required this.subReddit,
      required this.upvotes,
      required this.comments,
      required this.timeStamp,
      required this.subRedditIcon,
      required this.subRedditColor});
  static List<Post> posts = [
    Post(
        id: 1,
        title:
            "What is your Dream Watch? Mine is Omega Speedmaster - Dark Side of the Moon(Apollo)",
        image: "assets/image/post_pic.jpg",
        subReddit: "r/Watchesindia",
        upvotes: "269",
        comments: "68",
        timeStamp: DateTime(2023, DateTime.now().month, DateTime.now().day,
            DateTime.now().hour - 1),
        subRedditIcon: "assets/icons/post_icon.png",
        subRedditColor: Colors.lightBlue),
    Post(
        id: 2,
        title: "Why Nashik diamond is not popular as Kohinoor diamond",
        image: "assets/images/post_pic2.jpg",
        subReddit: "r/nashik",
        upvotes: "43",
        comments: "16",
        timeStamp: DateTime(2023, DateTime.now().month, DateTime.now().day,
            DateTime.now().hour - 1),
        subRedditIcon: "assets/icons/post_icon2.png",
        subRedditColor: Colors.lightBlueAccent)
  ];
}
