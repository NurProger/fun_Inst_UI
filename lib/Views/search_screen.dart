import 'package:flutter/material.dart';
 class SearchScreen extends StatefulWidget {
   const SearchScreen({super.key});

   @override
   State<SearchScreen> createState() => _SearchScreenState();
 }

 class _SearchScreenState extends State<SearchScreen> {
   @override
   Widget build(BuildContext context) {
     return  Scaffold(
       body: Column(
         children: [
           const Padding(
             padding: EdgeInsets.only(left: 16.0,right: 16,top: 16,bottom: 5),
             child: TextField(
               decoration: InputDecoration(
                 labelText: "Search",
                 border: OutlineInputBorder(),
                 isCollapsed: true,
                 contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 5)
               ),
             ),
           ),
           SizedBox(height: 5,),
           Container(
             decoration: BoxDecoration(
               border: Border(
                 top: BorderSide(
                   color: Colors.grey,
                   width: 0.2
                 )
               )
             ),
           )
         ],
       ),
     );
   }
 }
