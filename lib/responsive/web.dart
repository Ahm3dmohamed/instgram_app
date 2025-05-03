import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instgram_app/model/view/screens/add.dart';
import 'package:instgram_app/model/view/screens/home.dart';
import 'package:instgram_app/model/view/screens/love.dart';
import 'package:instgram_app/model/view/screens/profile.dart';
import 'package:instgram_app/model/view/screens/search.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({super.key});

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  bool onIconClick = true;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
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
          IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
          const SizedBox(
            width: 9,
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded)),
          const SizedBox(
            width: 9,
          ),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
          const SizedBox(
            width: 9,
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
          const SizedBox(
            width: 9,
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
        ],
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const HomeIcon(),
          Search(),
          const AddItem(),
          const Favorite(),
          Profile(),
        ],
      ),
    );
  }
}
