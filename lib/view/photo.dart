import 'package:flutter/material.dart';

class Photo extends StatelessWidget {
  Photo({Key? key, this.height}) : super(key: key);
  double? height;
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      
      child: Image.network(
          "https://st3.depositphotos.com/6064568/12938/v/950/depositphotos_129380768-stock-illustration-man-programmer-hipster-is-working.jpg",
          height: height,
          fit: BoxFit.fill, errorBuilder: (context, exaption, StackTracs) {
        return const Center(child: Text("Ther some error "));
      }, loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }
        return Center(
          child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!
                : null,
          ),
        );
      }),
    );
  }
}
