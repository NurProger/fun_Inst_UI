import 'package:flutter/material.dart';
import 'package:insta_ui/Components/Bubble_stories.dart';

class ProFileScreen extends StatefulWidget {
  const ProFileScreen({super.key});

  @override
  State<ProFileScreen> createState() => _ProFileScreenState();
}

class _ProFileScreenState extends State<ProFileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 4,
        shadowColor: Colors.black,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("_flutter_"),
            SizedBox(width: 210,),
            Icon(Icons.add_box_rounded),
            Icon(Icons.dehaze),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 25.0, right: 25, top: 25, bottom: 5),
                        child: Container(
                            width: 80,
                            height: 80,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.grey),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage("Assets/images/picture_6.jpg"),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Text(
                          '_flutter_',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35.0, left: 15),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [Text('0'), Text('Public')],
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Column(
                                children: [Text('106'), Text('follower')],
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Column(
                                children: [Text('111'), Text('following')],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child: Row(
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 5, horizontal: 20)),
                    minimumSize: MaterialStateProperty.all(Size(30, 30)),
                    fixedSize: MaterialStatePropertyAll(Size(140, 5)),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.grey[200]),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Edit profile",
                    style: TextStyle(color: Colors.black45),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      fixedSize: MaterialStatePropertyAll(Size(140, 5)),
                      minimumSize: MaterialStateProperty.all(Size(30, 30)),
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.grey[200]),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)))),
                  onPressed: () {},
                  child: Text(
                    "Archiv",
                    style: TextStyle(color: Colors.black45),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.black),
                      shape: BoxShape.circle,
                      color: Colors.transparent),
                  child: Icon(Icons.add),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(left: 28)),
              Text("Add"),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.grey, width: 0.2)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.calendar_view_month_sharp),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.calendar_view_day_rounded),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.bookmark),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
