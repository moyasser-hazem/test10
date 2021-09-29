import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatefulWidget {
  SocialMedia({Key? key}) : super(key: key);

  @override
  State<SocialMedia> createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  double iconSize = 38;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Find me on",
          style: Theme.of(context).textTheme.caption,
        ),
        Wrap(
          spacing: 32,
          children: [
            IconButton(
              iconSize: iconSize,
              onPressed: () {
                launch(
                  "http://flutter.dev",
                );
              },
              icon: const FaIcon(
                FontAwesomeIcons.github,
              ),
            ),
            IconButton(
              iconSize: iconSize,
              onPressed: () {
                launch("https://www.linkedin.com/in/moyasser-hazim-7a192016a/");
              },
              icon: const FaIcon(
                FontAwesomeIcons.linkedin,
              ),
            ),

            IconButton(
              iconSize: iconSize,
              onPressed: () {
                launch(
                  "http://flutter.dev",
                );
              },
              icon: const FaIcon(
                FontAwesomeIcons.instagram,
              ),
            )

            // FaIcon(FontAwesomeIcons.facebook),
          ],
        ),
      ],
    );
  }
}
