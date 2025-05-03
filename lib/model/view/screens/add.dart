import 'package:flutter/material.dart';
import 'package:instgram_app/constants/constant.dart';

class AddItem extends StatelessWidget {
  const AddItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      appBar: AppBar(title: Text("AddPost"),
      backgroundColor:mobileBackgroundColor,),
    );
  }
}