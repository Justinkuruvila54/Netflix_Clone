// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/utils/imageconstants.dart';
import 'package:netflix_clone/utils/imagedata.dart';
import 'package:netflix_clone/view/bottom_screen/bottom_screen.dart';

class Userscreen extends StatefulWidget {
  const Userscreen({super.key});

  @override
  State<Userscreen> createState() => _UserscreenState();
}

class _UserscreenState extends State<Userscreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
          backgroundColor: Colorconstant.mainblack,
          appBar: AppBar(
            backgroundColor: Colorconstant.mainblack,
            centerTitle: true,
            title: SizedBox(
              height: 100,
              width: 150,
              child: Image.asset(Imageconstants.netflixlogo),
            ),
            actions: [
              SizedBox(
                height: 50,
                width: 50,
                child: Icon(
                  Icons.edit,
                  color: Colorconstant.mainwhite,
                ),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: Database.imagedatabase.length + 1,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                  ),
                  itemBuilder: (context, index) => index <
                          Database.imagedatabase.length
                      ? Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Bottonnavscreen(),));
                              },
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(Database
                                            .imagedatabase[index]["image"]))),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              Database.imagedatabase[index]["text"],
                              style: TextStyle(color: Colorconstant.mainwhite),
                            )
                          ],
                        )
                      : Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(80),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/image/addicon.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "add",
                              style: TextStyle(color: Colorconstant.mainwhite),
                            )
                          ],
                        ),
                ),
              ],
            ),
          )),
    );
  }
}
