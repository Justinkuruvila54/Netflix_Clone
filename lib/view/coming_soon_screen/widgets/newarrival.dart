// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/utils/imagedata.dart';

class Notificationcustommoviecard extends StatelessWidget {
  const Notificationcustommoviecard(
      {super.key,
      required this.imageurl,
      required this.movieName,
      required this.title,
      required this.date});
  final String imageurl;
  final String movieName;
  final String title;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 76,
          width: 146,
          child: Image.network(
            imageurl,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              movieName,
              style: TextStyle(color: Colorconstant.mainwhite, fontSize: 18),
            ),
            Text(
              title,
              style: TextStyle(color: Colorconstant.mainwhite, fontSize: 15),
            ),
            Text(
              date,
              style: TextStyle(
                  color: Colorconstant.mainwhite.withOpacity(.6), fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
