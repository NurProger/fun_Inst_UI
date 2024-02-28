import 'package:flutter/material.dart';
import 'package:insta_ui/Components/Bubble_stories.dart';
import 'package:insta_ui/Components/posts.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  _Home_Screen createState() => _Home_Screen();
}

class _Home_Screen extends State<Home_Screen> {
  List<String> people = [
    "Nurali",
    "Madi",
    "Nursat",
    "Erasyl",
    "Kenesary",
    "Kalzhan",
  ];
  List<String> Avatar = [
    "Assets/images/picture_6.jpg",
    "Assets/images/picture_2.jpg",
    "Assets/images/picture_3.jpg",
    "Assets/images/picture_4.jpg",
    "Assets/images/picture_5.jpg",
    "Assets/images/picture_1.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
        title: const Row(
          children: [
            Text('Instagram'),
            SizedBox(width: 210),
            Icon(Icons.add),
            SizedBox(width: 10,),
            Icon(Icons.favorite),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 105,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Colors.grey,
                          width: 0.2
                      )
                  )
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (BuildContext context, int index) {
                  return BubbleStories(name: people[index], ImagePath: Avatar[index],);
                },
              ),
            ),
            Column(
              children: List.generate(
                    Avatar.length - 1 , (index) => Posts(avatar: Avatar[index],name: people[index],ImagePath: Avatar[index+1],))

            ),
          ],
        ),
      ),
    );
  }
}
