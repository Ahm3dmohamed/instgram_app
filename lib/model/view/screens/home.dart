import 'package:flutter/material.dart';
import 'package:instgram_app/constants/constant.dart';
import 'package:instgram_app/model/view/screens/profile.dart';
import 'package:instgram_app/responsive/mobile.dart';
import 'package:instgram_app/responsive/web.dart';

class HomeIcon extends StatefulWidget {
  const HomeIcon({super.key});
  
  @override
  State<HomeIcon> createState() => _HomeIconState();
}

class _HomeIconState extends State<HomeIcon> {
  bool onIconClick = true;

  TimeOfDay now = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.sizeOf(context).height;
    double widthScreen = MediaQuery.sizeOf(context).width;
    return Scaffold(
      
      backgroundColor:  widthScreen>600? webBackgroundColor :mobileBackgroundColor,
      body: 
       Container(
        decoration:widthScreen>500? BoxDecoration(
          borderRadius: BorderRadius.circular(44),
        ):null,
        margin: EdgeInsets.symmetric(vertical: 7,horizontal:widthScreen>500?widthScreen/4:0 ),
         child: Column(
           // crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Row(
                     children: [
                       InkWell(
                         onTap: () {
                           Navigator.push(context,
                               MaterialPageRoute(builder: (context) => Profile()));
                         },
                         child: Container(
                           padding: const EdgeInsets.all(3),
                           decoration: const BoxDecoration(
                             shape: BoxShape.circle,
                             color: Colors.grey,
                           ),
                           child: const CircleAvatar(
                             radius: 34,
                             backgroundImage: AssetImage(
                               "assets/img/me.jpg",
                             ),
                           ),
                         ),
                       ),
                       const SizedBox(
                         width: 12,
                       ),
                       const Text(
                         "Ahmed Hamada",
                         style:
                             TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                       ),
                     ],
                   ),
                   IconButton(
                       onPressed: () {},
                       icon: const Icon(
                         Icons.more_vert,
                         size: 24,
                       ))
                 ],
               ),
             ),
             // const SizedBox(
             //   height: 3,
             // ),
             Image.asset(
               "assets/img/coffe.jpg",
               height: heightScreen * .35,
               width: double.infinity,
             ),
             const SizedBox(
               height: 4,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Row(
                   children: [
                     IconButton(
                         onPressed: () {
                           setState(() {
                             onIconClick = !onIconClick;
                           });
                         },
                         icon: onIconClick
                             ? const Icon(
                                 Icons.favorite_border,
                                 size: 34,
                               )
                             : const Icon(
                                 Icons.favorite,
                                 size: 34,
                                 color: Colors.red,
                               )),
                     IconButton(
                         onPressed: () {},
                         icon: const Icon(
                           Icons.message,
                           size: 34,
                         )),
                     IconButton(
                         onPressed: () {},
                         icon: const Icon(
                           Icons.send,
                           size: 34,
                         )),
                   ],
                 ),
                 IconButton(
                   onPressed: () {},
                   icon: const Icon(
                     Icons.bookmark_border,
                     size: 34,
                   ),
                 ),
               ],
             ),
         
             Container(
               width: double.infinity,
               alignment: Alignment.centerLeft,
               margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
               child: const Text(
                 textAlign: TextAlign.start,
                 "10 Likes",
                 style: TextStyle(fontWeight: FontWeight.w300),
               ),
             ),
         
             Container(
               width: double.infinity,
               alignment: Alignment.centerLeft,
               margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
               child: Row(
                 children: [
                   const Text(
                     "Ahmed Hamada",
                     style: TextStyle(fontWeight: FontWeight.bold),
                   ),
                   TextButton(
                       onPressed: () {},
                       child: const Text(
                         "Amazing picture",
                         style: TextStyle(fontWeight: FontWeight.w400),
                       )),
                 ],
               ),
             ),
             Container(
                 width: double.infinity,
                 alignment: Alignment.centerLeft,
                 // margin: const EdgeInsets.fromLTRB(6, 0, 0, 0),
                 child: TextButton(
                     onPressed: () {},
                     child: const Text(
                       "view all 100 comment",
                       style: TextStyle(fontWeight: FontWeight.w400),
                     ))),
             Container(
               alignment: Alignment.centerLeft,
               margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
               child: const Text(
                 textAlign: TextAlign.start,
                 "25  july 2024 ",
                 style: TextStyle(fontWeight: FontWeight.w300),
               ),
             ),
           ],
         ),
       ),
    );
  }
}
