import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:reddit_clone_ui/Screens/post_details_screen/post_details_screen.dart';
import 'package:reddit_clone_ui/models/post.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key, required this.post });
final PostCard post;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(PostDetails arguments: post);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 8.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.black.withAlpha(100),
              width: 0.3
            )
          )
        ),
        child: Material(
          color: Theme.of(context).colorScheme.surface,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: const EdgeInsets.only(left: 10, top: 8),
              child: Row(
                children: [
                  Image.asset(post.subRedditIcon,
                  width: 20,
                      height: 20,
                  ),
                  const SizedBox(width: 5),
                  Expanded(child: Row(mainAxisSize: MainAxisSize.max
                    ,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("r/${post.subReddit}",
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 2),
                             Text(
                              "${DateFormat.H().format(post.timeStamp)}h",
                               style: const TextStyle(
                                 color: Colors.grey
                               ),
                            ),
                          ],
                        )
                      ],
                    ),
                    IconButton(onPressed: ()  {},
                        iconSize: 20,
                        visualDensity: VisualDensity.compact,
                        icon: const Icon(Icons.more_vert,color: Colors.grey,
                        ),
                    ),
                  ],))
                ],
              ),
              ),
              Padding(padding: const EdgeInsets.all(10.0),
              child: Text(post.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),),),
              post.image! = null ? Image.asset(post.image!,fit: BoxFit.cover,)
                  :const SizedBox.shrink(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: ()  {}, icon: Icon(Icons.arrow_upward,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  ),
                  Text(post.upvotes.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_downward,color: Colors.black.withOpacity(0.5),
                  ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.chat_bubble_outline,
                  color: Colors.black.withOpacity(0.5),
                  ),
      
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.share,
                    color: Colors.black.withOpacity(0.5),
                    
                  ),
                  const SizedBox(width: 5),
                  Text("share",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.5),
                  ),)
                ],
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.card_giftcard,color: Colors.black.withOpacity(0.5),))
            ],
          ),
        ),
     ),
);
}
}
