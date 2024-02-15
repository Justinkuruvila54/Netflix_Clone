// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/utils/imagedata.dart';

class Customhomemoviecard extends StatelessWidget {
  const Customhomemoviecard({
    super.key,
    required this.tittle,
    this.height = 200,
    this.width = 100,
    this.isCircular = false,
    required this.imagelist,
    this.isoptionvisible = false,
  });
  final String tittle; //custommoviecard tittle
  final double height;  //set card default height
  final double width;  //set card default width
  final bool isCircular; //movie card some card maybe circular
  final List<String> imagelist; //it is dummy dataimagelist for display moviecard images
  final bool isoptionvisible; //options for movie card
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              tittle,
              style: TextStyle(
                  color: Colorconstant.mainwhite,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                        height: height,
                        width: width,
                        decoration: BoxDecoration(
                            shape: isCircular == true
                                ? BoxShape.circle
                                : BoxShape.rectangle,
                            color: Colorconstant.mainred,
                            image: DecorationImage(
                                image: NetworkImage(
                                  Database.Movieposterdb[index],
                                ),
                                fit: BoxFit.cover)),
                        alignment: AlignmentDirectional.bottomCenter,
                        child: Visibility(
                          visible: isoptionvisible,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 5,
                                color: Colorconstant.maingrey,
                                child: Container(
                                  height: 5,
                                  width: 45,
                                  color: Colorconstant.mainred,
                                ),
                              ),
                              Container(
                                height: 30,
                                color: Colorconstant.mainblack,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.info_outline,
                                        color: Colorconstant.mainwhite,
                                        size: 30,
                                      ),
                                      Icon(
                                        Icons.more_vert,
                                        color: Colorconstant.mainwhite,
                                        size: 30,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 10,
                      ),
                  itemCount: Database.Movieposterdb.length),
            ),
          ),
        ],
      ),
    );
  }
}
