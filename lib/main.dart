import "package:flutter/material.dart";
import "package:instgram_app/responsive/mobile.dart";
import "package:instgram_app/responsive/responsive.dart";
import "package:instgram_app/responsive/web.dart";
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home:ResponsiveScreen(
        mobileScreen: MobileScreen(),
        webScreen: WebScreen(),
      ),
    );
  }
}
