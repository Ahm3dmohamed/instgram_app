// import 'package:flutter/material.dart';
// import 'package:instgram_app/constants/constant.dart';

// class BtnNavBarItem extends StatefulWidget {
  
//   const BtnNavBarItem({super.key});

//   @override
//   State<BtnNavBarItem> createState() => _BtnNavBarItemState();
// }

// class _BtnNavBarItemState extends State<BtnNavBarItem> {
//   PageController _pageController = PageController();
//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   int _selectedIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return
//       BottomNavigationBar(
//         onTap: (index) {
//           _pageController.jumpToPage(index);
//           setState(() {
//             _selectedIndex = index;
//           });
//         },
//         backgroundColor: mobileBackgroundColor,
//         iconSize: 36,
//         items: [
//           BottomNavigationBarItem(
            
//               icon: Icon(
//                 Icons.home,
//                 color: _selectedIndex == 0 ? primaryColor : secondaryColor,
//               ),
//               label: ""),
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.search,
//                 color: _selectedIndex == 1 ?  primaryColor : secondaryColor
//               ),
//               label: ""),
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.add_circle,
//                 color: _selectedIndex == 2 ? primaryColor : secondaryColor
//               ),
//               label: ""),
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.favorite,
//                 color: _selectedIndex == 3 ?  primaryColor : secondaryColor
//               ),
//               label: ""),
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.person_outline_rounded,
//                 color: _selectedIndex == 4 ?  primaryColor : secondaryColor
//               ),
//               label: ""),
//         ],
//       )
//     ;
//   }
// }