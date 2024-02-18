// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/utils/imagedata.dart';
import 'package:netflix_clone/view/coming_soon_screen/widgets/newarrival.dart';
import 'package:netflix_clone/view/coming_soon_screen/widgets/notification_customcard.dart';

class Comingsoonscreen extends StatefulWidget {
  const Comingsoonscreen({super.key});

  @override
  State<Comingsoonscreen> createState() => _ComingsoonscreenState();
}

class _ComingsoonscreenState extends State<Comingsoonscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colorconstant.mainblack,
        appBar: AppBar(
          backgroundColor: Colorconstant.mainblack,
          leading: Center(
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colorconstant.mainred,
              child: Icon(
                Icons.notifications,
                color: Colorconstant.mainwhite,
              ),
            ),
          ),
          title: Text(
            "Notifications",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colorconstant.mainwhite),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colorconstant.maingrey,
                child: ListView.separated(
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    itemBuilder: (context, index) =>
                        Notificationcustommoviecard(
                            imageurl: Database.newarrivalmoviesData[index]
                                    ["imageUrl"]
                                .toString(),
                            movieName: Database.newarrivalmoviesData[index]
                                    ["movieName"]
                                .toString(),
                            title: Database.newarrivalmoviesData[index]["title"]
                                .toString(),
                            date: Database.newarrivalmoviesData[index]["date"]
                                .toString()),
                    separatorBuilder: (context, index) => SizedBox(
                          height: 10,
                        ),
                    itemCount: Database.newarrivalmoviesData.length),
              ),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Custonnotificationcard(
                        imageurl: Database.notificationMovieList[index]
                                ["imageUrl"]
                            .toString(),
                        subtitle: Database.notificationMovieList[index]
                                ["subtitle"]
                            .toString(),
                        title: Database.notificationMovieList[index]["title"]
                            .toString(),
                        description: Database.notificationMovieList[index]
                                ["description"]
                            .toString(),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                  itemCount: Database.notificationMovieList.length)
            ],
          ),
        ),
      ),
    );
  }
}
