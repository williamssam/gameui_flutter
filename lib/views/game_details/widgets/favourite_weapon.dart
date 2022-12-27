import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavouriteWeapon extends StatelessWidget {
  const FavouriteWeapon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: const Color(0xFFEFEFEF),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Image.asset(
                  'assets/gun-one.png',
                  width: 106,
                  height: 40,
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'AK47',
                  style: GoogleFonts.syne(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                Text(
                  '23,867 Shots',
                  style: GoogleFonts.syne(
                      fontSize: 20,
                      height: 1.5,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFFBCBCBC)),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
