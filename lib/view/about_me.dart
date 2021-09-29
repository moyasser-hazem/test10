import 'package:flutter/material.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hi, I'm Moyasser Hazim",
          style: Theme.of(context).textTheme.bodyText1,
        ),
        Text(
          "Software Developer",
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ],
    );
  }
}
