import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_app/views/game_details/game_details_view.dart';
import 'package:google_fonts/google_fonts.dart';

class GameCard extends StatelessWidget {
  const GameCard({super.key, required this.game});

  final Map<String, dynamic> game;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => GameDetailsScreen(game: game))),
      child: Stack(children: [
        Container(
          padding: const EdgeInsets.all(24),
          height: 400,
          width: 330,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: game['bgColor'],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              // color: Colors.purpleAccent,
              borderRadius: BorderRadius.circular(45)),
        ),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Image.asset(
              game['gameImage'],
              width: 120,
              height: 65,
            ),
          ),
        ),
        Positioned(
          right: -10,
          bottom: 0,
          child: Image.asset(
            game['playerImage'],
            width: 297,
            height: 371,
          ),
        ),
        Positioned(
          bottom: 0,
          width: 330,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      game['hoursPlayed'].toString(),
                      style: GoogleFonts.syne(
                          fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'hours played',
                      style: GoogleFonts.syne(
                          fontSize: 13, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 19, vertical: 15),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: SvgPicture.asset(
                    'assets/arrow-right.svg',
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
