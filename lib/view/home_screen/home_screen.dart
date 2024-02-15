// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

import 'package:netflix_clone/utils/imageconstants.dart';
import 'package:netflix_clone/utils/imagedata.dart';
import 'package:netflix_clone/view/home_screen/widgets/custom_movie_card.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 430,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(Imageconstants.homepageimage),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(Imageconstants.netflixlogoscec),
                    Text(
                      "TV Shows",
                      style: TextStyle(
                          color: Colorconstant.mainwhite, fontSize: 17),
                    ),
                    Text(
                      "Movies",
                      style: TextStyle(
                          color: Colorconstant.mainwhite, fontSize: 17),
                    ),
                    Text(
                      "My list",
                      style: TextStyle(
                          color: Colorconstant.mainwhite, fontSize: 17),
                    )
                  ],
                ),
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(Imageconstants.homepageimage3),
                        SizedBox(
                          width: 10,
                        ),
                        Text("#2 Nigeria Today",
                            style: TextStyle(
                                color: Colorconstant.mainwhite, fontSize: 18))
                      ],
                    ),
                  ))
            ],
          ),

          //home screen mylist,play,info section
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.add,
                    color: Colorconstant.mainwhite,
                  ),
                  Text(
                    "My List",
                    style:
                        TextStyle(color: Colorconstant.mainwhite, fontSize: 17),
                  )
                ],
              ),
              SizedBox(
                width: 25,
              ),
              Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colorconstant.maingrey),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                     
                      Icon(
                        Icons.play_arrow,
                        size: 30,
                        color: Colorconstant.mainblack,
                      ),
                       SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Play",
                        style: TextStyle(
                            color: Colorconstant.mainblack, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 25,
              ),
              Column(
                children: [
                  Icon(
                    Icons.info_outline,
                    color: Colorconstant.mainwhite,
                    size: 30,
                  ),
                  Text(
                    "Info",
                    style:
                        TextStyle(color: Colorconstant.mainwhite, fontSize: 20),
                  )
                ],
              )
            ],
          ),
          Customhomemoviecard(
            tittle: "Preview",
            imagelist: Database.Movieposterdb,
            height: 100,
            width: 100,
            isCircular: true,
          ),
          Customhomemoviecard(
              tittle: "Continue Watching for Emenalo",
              imagelist: Database.movieImageUrls1,
              isoptionvisible: true,
              ),

          Customhomemoviecard(
            tittle: " Trending Now",
            imagelist: Database.movieImageUrls2,
          ),
          Customhomemoviecard(
            tittle: " Top 10 in Nigeria Today",
            imagelist: Database.movieImageUrls2,
          ),
          Customhomemoviecard(
            tittle: "My List",
            imagelist: Database.movieImageUrls2,
          ),
           Customhomemoviecard(
            tittle: "African Movies",
            imagelist: Database.movieImageUrls2,
           
          ),
           Customhomemoviecard(
            tittle: "Nollywood Movies & Tv",
            imagelist: Database.movieImageUrls2,
           
          ),
           Customhomemoviecard(
            tittle: "Nettlix Originals",
            height: 250,
            width: 155,
            imagelist: Database.movieImageUrls2,
           
          ),
           Customhomemoviecard(
            tittle: "Watch It Again ",
            imagelist: Database.movieImageUrls2,
           
          ),
           Customhomemoviecard(
            tittle: "New Relaease",
            imagelist: Database.movieImageUrls2,
           
          ),
           Customhomemoviecard(
            tittle: "Tv Thiriller and Mystories",
            imagelist: Database.movieImageUrls2,
           
          ),
           Customhomemoviecard(
            tittle: "Us Tv Shows",
            imagelist: Database.movieImageUrls2,
           
          )

        ],
      ),
    );
  }
}
