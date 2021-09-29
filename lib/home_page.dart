import 'package:flutter/material.dart';

import 'colors.dart';
import 'view/about_me.dart';
import 'view/nav_bar.dart';
import 'view/photo.dart';
import 'view/social_media.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size.width);
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // SizedBox(
              //   height: 12,
              // ),
              Navbar(),
              // Divider()

              Wrap(
                verticalDirection: VerticalDirection.up,
                alignment: WrapAlignment.center,
                spacing: 100,
                runSpacing: 50,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [AboutMe(), SocialMedia()],
                  ),
                  Photo(
                      height: //size.width > 1240
                          //?
                          size.width * 0.4
                      //: size.width * 0.25,
                      )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
