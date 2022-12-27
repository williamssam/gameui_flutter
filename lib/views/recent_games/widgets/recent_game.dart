import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentGame extends StatelessWidget {
  const RecentGame({super.key, required this.game});

  final Map<String, dynamic> game;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          Container(
            height: 220,
            width: double.infinity,
            margin: const EdgeInsets.all(24),
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 40),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: game['bgColor'],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                borderRadius: BorderRadius.circular(50)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  game['gameImage'],
                  width: 92,
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      game['hoursPlayed'].toString(),
                      style: GoogleFonts.syne(
                          fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Hours played',
                      style: GoogleFonts.syne(
                          fontSize: 13, fontWeight: FontWeight.w500),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            // color: Colors.white,
            width: double.infinity,
            height: 275,
            child: Image.asset(
              game['playerImage'],
              width: 192,
              height: 275,
              alignment: Alignment.topRight,
            ),
          ),
        ]),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
