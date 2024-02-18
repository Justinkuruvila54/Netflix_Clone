// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/utils/imagedata.dart';

class Morescreen extends StatefulWidget {
  const Morescreen({super.key});

  @override
  State<Morescreen> createState() => _MorescreenState();
}

class _MorescreenState extends State<Morescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colorconstant.mainblack,
          body: Column(
            children: [
              SizedBox(
                height: 150,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Column(
                          children: [
                            InkWell(
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(Database
                                            .imagedatabase[index]["image"]
                                            .toString()))),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              Database.imagedatabase[index]["text"].toString(),
                              style: TextStyle(color: Colorconstant.mainwhite),
                            ),
                          ],
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 10,
                        ),
                    itemCount: Database.imagedatabase.length + 1),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.edit,
                    color: Colorconstant.mainwhite,
                    size: 22,
                  ),
                  Text(
                    "Manage Profiles",
                    style:
                        TextStyle(color: Colorconstant.mainwhite, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 300,
                color: const Color.fromARGB(255, 74, 63, 63),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.message_rounded,
                            color: Colorconstant.mainwhite,
                            size: 25,
                          ),
                          Text(
                            "Tell friends about Netflix.",
                            style: TextStyle(
                                color: Colorconstant.mainwhite, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      style: TextStyle(
                          color: Colorconstant.mainwhite, fontSize: 14),
                      textAlign: TextAlign.justify,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Text(
                            "Terms and condition",
                            style: TextStyle(
                              color: Colorconstant.maingrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 300,
                            color: Colorconstant.mainblack,
                          ),
                          SizedBox(
                            width: 1,
                          ),
                          Container(
                            height: 30,
                            width: 70,
                            color: Colorconstant.mainwhite,
                            child: Center(
                                child: Text(
                              "copy link",
                              style: TextStyle(color: Colorconstant.mainblack),
                            )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 40,
                              width: 40,
                              child: Image.asset(
                                  "assets/image/logos_whatsapp.png")),
                          VerticalDivider(
                            color: Colorconstant.mainwhite,
                            thickness: 2,
                            width: 10,
                            indent: 5,
                            endIndent: 5,
                          ),
                          Container(
                              height: 40,
                              width: 40,
                              child: Image.asset(
                                  "assets/image/logos_facebook.png")),
                          VerticalDivider(
                            color: Colorconstant.mainwhite,
                            thickness: 2,
                            width: 10,
                            indent: 5,
                            endIndent: 5,
                          ),
                          Container(
                              height: 40,
                              width: 40,
                              child:
                                  Image.asset("assets/image/Gmail-logo 1.png")),
                          VerticalDivider(
                            color: Colorconstant.mainwhite,
                            thickness: 2,
                            width: 10,
                            indent: 5,
                            endIndent: 5,
                          ),
                          Container(
                              height: 40,
                              width: 40,
                              child: Image.asset("assets/image/Group 77.png"))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.done,
                      size: 35,
                      color: Colors.white,
                    ),
                    SizedBox(width: 7),
                    Text(
                      "My List",
                      style: TextStyle(
                          color: Colorconstant.mainwhite, fontSize: 22),
                    )
                  ],
                ),
              ),
              Divider(
                color: Colorconstant.maingrey,
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "App Settings",
                          style: TextStyle(
                              color: Colorconstant.mainwhite, fontSize: 15),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Account",
                          style: TextStyle(
                              color: Colorconstant.mainwhite, fontSize: 15),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Help",
                          style: TextStyle(
                              color: Colorconstant.mainwhite, fontSize: 15),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Sign Out",
                          style: TextStyle(
                              color: Colorconstant.mainwhite, fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
