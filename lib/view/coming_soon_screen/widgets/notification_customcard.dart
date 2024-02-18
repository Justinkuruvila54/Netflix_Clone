// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class Custonnotificationcard extends StatelessWidget {
  const Custonnotificationcard(
      {super.key,
      required this.imageurl,
      required this.title,
      required this.subtitle,
      required this.description});
  final String imageurl;
  final String title;
  final String subtitle;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 250,
          width: double.infinity,
          child: Image.network(
            imageurl,
            fit: BoxFit.fill,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                Icon(
                  Icons.notifications,
                  color: Colorconstant.mainwhite,
                  size: 30,
                ),
                Text(
                  "Remind Me",
                  style:
                      TextStyle(fontSize: 18, color: Colorconstant.mainwhite),
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              children: [
                Icon(
                  Icons.share,
                  color: Colorconstant.mainwhite,
                  size: 30,
                ),
                Text(
                  "Share",
                  style:
                      TextStyle(fontSize: 18, color: Colorconstant.mainwhite),
                )
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(subtitle,
                  style:
                      TextStyle(color: Colorconstant.maingrey, fontSize: 14)),
              Text(title,
                  style: TextStyle(
                      color: Colorconstant.mainwhite,
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
              Text(description,
                  style:
                      TextStyle(color: Colorconstant.mainwhite, fontSize: 14)),
            ],
          ),
        )
      ],
    );
  }
}
