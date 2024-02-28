import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String name;
  final String ImagePath;
  const BubbleStories({super.key, required this.name,required this.ImagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300]
            ),
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(ImagePath)
              ) ,
            ),
          Text(name),
        ],
      ),
    );
  }
}
