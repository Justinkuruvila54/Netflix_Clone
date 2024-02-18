// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class Downloadscreen extends StatefulWidget {
  const Downloadscreen({super.key});

  @override
  State<Downloadscreen> createState() => _DownloadscreenState();
}

class _DownloadscreenState extends State<Downloadscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colorconstant.mainblack,
        body: Column(
          children: [Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text("Smart Download",style: TextStyle(color: Colorconstant.mainwhite,fontSize: 18)),
              ),
              SizedBox(height: 30,),
            Text("Introducing Downloads For You",style: TextStyle(color: Colorconstant.mainwhite,fontSize: 25,fontWeight: FontWeight.bold)),
            SizedBox(height: 15,),
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",style: TextStyle(color: Colorconstant.mainwhite,fontSize: 16),textAlign: TextAlign.justify,),
            ],
            ),
          ),
          SizedBox(height: 20,)
          ,CircleAvatar(radius: 130,backgroundColor: Colorconstant.maingrey,),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 50,
              width: 400,
              color: Colors.blue,
              child: Center(child: Text("Setup",style: TextStyle(color: Colorconstant.mainwhite,fontSize: 20),))
            ),
          ),
          SizedBox(height: 40,),
          Container(
            height: 40,
            width: 300,
            color: Colorconstant.maingrey,
            child: Center(child: Text("Find Something to Download",style: TextStyle(color: Colorconstant.mainwhite),)),
          )
          ],

        ),
      ),
    );
  }
}