import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SvgPicture.asset('assets/menu.svg'),
          const SizedBox(
            height: 40,
          ),
          Text('Hi, Pablo! Ready to play?'.toUpperCase(),
              style: GoogleFonts.syne(
                fontSize: 50,
                fontWeight: FontWeight.w700,
                // height: 5,
              ))
        ]),
      ),
    );
  }
}
