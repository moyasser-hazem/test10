import 'package:flutter/material.dart';
import 'package:my_profile/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        color: AppColor.white,
        // borderRadius: BorderRadius.circular(30),
        // boxShadow: kElevationToShadow[16],
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.center,
        child: Row(
          textDirection: TextDirection.ltr,
          // crossAxisAlignment: WrapCrossAlignment.end,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 65,
                  width: 1,
                  color: AppColor.red,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: const BoxDecoration(
                      color: AppColor.green,
                      borderRadius:
                          BorderRadius.horizontal(right: Radius.circular(30))),
                  child: const Text(
                    "Moyasser",
                    // style: GoogleFonts.merienda(
                    //     fontSize: 28,
                    //     color: AppColor.white,
                    //     fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            const Spacer(),
            InkWell(
              hoverColor: AppColor.black,
              child: Text(
                "About",
                style: Theme.of(context).textTheme.caption,
              ),
              onTap: () {},
            ),
            const SizedBox(
              width: 22,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "CV",
                style: Theme.of(context).textTheme.caption,

                // style: GoogleFonts.merienda(color: AppColor.black, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
