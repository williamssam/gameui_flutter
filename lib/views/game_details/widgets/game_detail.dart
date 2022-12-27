import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GameDetail extends StatelessWidget {
  const GameDetail({super.key, required this.game});

  final Map<String, dynamic> game;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 450),
      // padding: const EdgeInsets.symmetric(vertical: 40),
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(vertical: 43, horizontal: 30),
        children: [
          _detail('Hours', game['hoursPlayed'].toString()),
          const SizedBox(
            width: 40,
          ),
          _detail('Games', game['games'].toString()),
          const SizedBox(
            width: 40,
          ),
          _detail('Victories', game['victory'].toString()),
          const SizedBox(
            width: 40,
          ),
          _detail('Loses', game['loss'].toString()),
        ],
      ),
    );
  }

  _detail(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.syne(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: const Color(0xFFBCBCBC)),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          value,
          style: GoogleFonts.syne(
              fontSize: 50, fontWeight: FontWeight.w700, color: Colors.white),
        )
      ],
    );
  }
}
