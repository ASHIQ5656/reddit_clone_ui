import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 180,
          height: 180,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(""),
                fit: BoxFit.cover,
              )),
        ),
        const SizedBox(height: 10),
        const Text(
          "Your chats will show up here.",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 60, right: 60, bottom: 4),
          child: Text(
            "Get Started by tapping the new chat button here or on someones's profile",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.normal),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              elevation: 0.0,
              primary: Theme.of(context).colorScheme.secondary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          child: const Text(
            "Start chatting",
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
