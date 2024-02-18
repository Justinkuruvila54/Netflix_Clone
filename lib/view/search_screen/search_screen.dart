// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/utils/imagedata.dart';
import 'package:netflix_clone/view/search_screen/widgets/customlistcard.dart';

class Searchscreen extends StatefulWidget {
  const Searchscreen({super.key});

  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colorconstant.mainblack,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 60,
                width: double.infinity,
                color: Color.fromARGB(255, 78, 78, 81),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.search, color: Colorconstant.mainwhite),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Search for a show,movie",
                            style: TextStyle(color: Colorconstant.mainwhite),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.mic,
                        color: Colorconstant.mainwhite,
                      )
                    ],
                  ),
                ),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Top Searches",
                          style: TextStyle(
                              color: Colorconstant.mainwhite, fontSize: 22)),
                    )),
                SizedBox(
                  height: 700,
                 
                  child: ListView.separated(
                  
                    itemBuilder: (context, index) => Customlistcard(
                        tittle: Database.searchScreenDatas[index]["movieName"]
                            .toString(),
                        imageurl: Database.searchScreenDatas[index]["imageUrl"]
                            .toString()),
                    itemCount: Database.searchScreenDatas.length,
                    separatorBuilder: (context, index) => SizedBox(
                      height: 5,
                    ),
                  ),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
