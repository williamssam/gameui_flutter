import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class GameDetailsHeader extends StatelessWidget {
  const GameDetailsHeader({super.key, required this.game});

  final Map<String, dynamic> game;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 450,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: game['bgColor'],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius:
              const BorderRadius.only(bottomLeft: Radius.circular(50))),
      child: Stack(
        children: [
          Positioned(
            right: -70,
            bottom: -50,
            child: Image.asset(
              game['playerImage'],
              width: 387,
              height: 469.09,
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: SvgPicture.asset('assets/arrow-left.svg'),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2)),
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset('assets/avatar.png'),
                    ),
                  ),
                  Text('S1mple'.toUpperCase(),
                      style: GoogleFonts.syne(
                        fontSize: 45,
                        fontWeight: FontWeight.w700,
                      )),
                  Text('Captain rank ${game['rank']}'.toUpperCase(),
                      style: GoogleFonts.syne(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
