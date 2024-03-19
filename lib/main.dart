import 'package:flutter/material.dart';
import 'package:online_course/mobile/main_mobile.dart';
import 'package:online_course/web/main_web.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Online Programming Course",
      theme: ThemeData(
          fontFamily: GoogleFonts.lato().fontFamily,),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF374151),
          title: const Text("Programming Courses"),
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return const MainMobile();
          } else if (constraints.maxWidth <= 800) {
            return MainWeb(gridCount: 2);
          } else if (constraints.maxWidth <= 1200) {
            return MainWeb(gridCount: 3);
          } else {
            return MainWeb(gridCount: 4);
          }
        }),
      ),
    );
  }
}
