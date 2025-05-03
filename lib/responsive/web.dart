import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instgram_app/model/view/screens/add.dart';
import 'package:instgram_app/model/view/screens/home.dart';
import 'package:instgram_app/model/view/screens/love.dart';
import 'package:instgram_app/model/view/screens/profile.dart';
import 'package:instgram_app/model/view/screens/search.dart';

class WebScreen extends StatefulWidget {
  WebScreen({super.key});

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  bool onIconClick = true;
  PageController _pageController = PageController();

  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar:
       AppBar(
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
          IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          const SizedBox(
            width: 9,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded)),
          const SizedBox(
            width: 9,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          const SizedBox(
            width: 9,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
          const SizedBox(
            width: 9,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
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
