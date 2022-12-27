import 'package:flutter/material.dart';
import 'package:game_app/views/recent_games/recent_games_view.dart';
import 'package:google_fonts/google_fonts.dart';

class MyGameHeader extends StatelessWidget {
  const MyGameHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'My games'.toUpperCase(),
            style: GoogleFonts.syne(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const RecentGamesScreen())),
            child: Text(
              'See all',
              style: GoogleFonts.syne(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFFBCBCBC)),
            ),
          )
        ],
      ),
    );
  }
}
