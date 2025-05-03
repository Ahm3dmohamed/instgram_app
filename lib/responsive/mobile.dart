// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instgram_app/constants/constant.dart';
import 'package:instgram_app/model/view/screens/add.dart';
import 'package:instgram_app/model/view/screens/love.dart';
import 'package:instgram_app/model/view/screens/profile.dart';
import 'package:instgram_app/model/view/screens/search.dart';
import '../model/view/screens/home.dart';

class MobileScreen extends StatefulWidget {
  MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  PageController _pageController = PageController();
 
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
      double heightScreen = MediaQuery.sizeOf(context).height;
    double widthScreen = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: mobileBackgroundColor, // Set a specific background color
      appBar: 
       AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            SvgPicture.asset(
              "assets/img/insta.svg",
              color: Colors.white,
              height: 34,
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.messenger_outline_sharp)),
          SizedBox(width: 9),
          IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          _pageController.jumpToPage(index);
          setState(() {
            _selectedIndex = index;
          });
        },
        backgroundColor: Colors.black, // Set a specific background color
        iconSize: 36,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_rounded,
                color: _selectedIndex == 0 ? primaryColor : secondaryColor,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.search,
                  color: _selectedIndex == 1 ? primaryColor : secondaryColor),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle,
                  color: _selectedIndex == 2 ? primaryColor : secondaryColor),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite,
                  color: _selectedIndex == 3 ? primaryColor : secondaryColor),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded,
                  color: _selectedIndex == 4 ? primaryColor : secondaryColor),
              label: ""),
        ],
      ),
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomeIcon(),
          Search(),
          AddItem(),
          Favorite(),
          Profile(),
        ],
      ),
    );
  }
}
