import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_profile/colors.dart';
import 'package:my_profile/home_page.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          subtitle1: GoogleFonts.merienda(color: Colors.pink, fontSize: 22),
          caption: GoogleFonts.merienda(fontSize: 20),
          bodyText1: GoogleFonts.merienda(
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
          bodyText2: GoogleFonts.merienda(
              fontSize: 28, color: AppColor.white, fontWeight: FontWeight.w500),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
