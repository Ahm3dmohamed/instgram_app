
import 'package:flutter/material.dart';
class ResponsiveScreen extends StatelessWidget{
  final mobileScreen;  
  final webScreen;

  ResponsiveScreen({required this.mobileScreen, required this.webScreen});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext, BoxConstraints) {
      if (BoxConstraints.maxWidth > 450) {
        return webScreen ;
      } else {
        return mobileScreen ;
        
      }
    });
  }
}
