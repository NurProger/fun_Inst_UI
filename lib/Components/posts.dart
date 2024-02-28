import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  final String name;
  final String ImagePath;
  final String avatar;
  const Posts({super.key, required this.name, required this.ImagePath, required this.avatar});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
        height: 10,
      ),
      Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Container(
            width: 40,
            height: 40,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300]),
            child: CircleAvatar(
               backgroundImage: AssetImage(avatar),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(name),
          SizedBox(width: 267,),
          Icon(Icons.more_horiz)
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        height: 400,
        color: Colors.grey[300],
        child: Image.asset(ImagePath, fit: BoxFit.cover,),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.favorite,
              size: 24,
            ),
            SizedBox(
              width: 25,
            ),
            Icon(Icons.mode_comment_rounded, size: 24),
            SizedBox(
              width: 25,
            ),
            Icon(Icons.telegram, size: 24),
            SizedBox(
              width: 240,
            ),
            Icon(Icons.bookmark, size: 24),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text("liked by Nurali and Madi"),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 32, top: 5),
        child: Row(
          children: [
            Text(
              "Madi",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Nurali soska",
            ),
          ],
        ),
      ),
    ]);
  }
}
