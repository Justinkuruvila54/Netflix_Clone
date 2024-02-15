// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/view/coming_soon_screen/coming_soon_screen.dart';
import 'package:netflix_clone/view/download_screen/download_screen.dart';
import 'package:netflix_clone/view/home_screen/home_screen.dart';
import 'package:netflix_clone/view/more_screen/more_screen.dart';
import 'package:netflix_clone/view/search_screen/search_screen.dart';

class Bottonnavscreen extends StatefulWidget {
  const Bottonnavscreen({super.key});

  @override
  State<Bottonnavscreen> createState() => _BottonnavscreenState();
}

class _BottonnavscreenState extends State<Bottonnavscreen> {
  int selectedindex = 0;
  List<Widget> screens = [
    Homescreen(),
    Searchscreen(),
    Comingsoonscreen(),
    Downloadscreen(),
    Morescreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedindex],
      backgroundColor: Colorconstant.mainblack,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colorconstant.mainblack,
          onTap: (index) {
            selectedindex = index;
            setState(() {
              
            });
          },
          currentIndex: selectedindex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colorconstant.mainwhite,
          unselectedItemColor: Colorconstant.maingrey,
          
          items: [
            
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined),
                label: "Coming Soon"),
            BottomNavigationBarItem(
                icon: Icon(Icons.download), label: "Download"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More")
          ]),
    );
  }
}
