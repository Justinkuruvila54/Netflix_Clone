// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/utils/imagedata.dart';

class Customlistcard extends StatelessWidget {
  const Customlistcard(
      {super.key, required this.tittle, required this.imageurl});
  final String tittle;
  final String imageurl;

  @override
  Widget build(BuildContext context) {
    return Container(
    
      height: 90,
      color: Colorconstant.maingrey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [Container(
              height: 90,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imageurl), fit: BoxFit.cover),
              )),
              SizedBox(width: 15,),
          Text(
            tittle,
            style: TextStyle(color: Colorconstant.mainwhite),
          ),],
          ),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.play_circle_outline_outlined,
              color: Colorconstant.mainwhite,
            ),
          ),
          
        ],
      ),
    );
  }
}
