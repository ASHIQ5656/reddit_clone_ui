class Message {
  final String title;
  final String content;
  final String username;
  final int timesent;

  Message({
    required this.title,
    required this.content,
    required this.username,
    required this.timesent,
  });
  static List<Message> messages = [
    Message(
      title: "Welcome to r/watchesindia!",
      content:
          "welcome to Indain Watch Community! We're thrilled to have you join our community of..",
      username: "u/welcomebot",
      timesent: 2,
    ),
  ];
}
