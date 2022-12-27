import 'package:flutter/material.dart';
import 'package:game_app/views/game_details/widgets/favourite_weapon.dart';
import 'package:game_app/views/game_details/widgets/game_detail.dart';
import 'package:game_app/views/game_details/widgets/game_details_header.dart';
import 'package:google_fonts/google_fonts.dart';

class GameDetailsScreen extends StatelessWidget {
  const GameDetailsScreen({super.key, required this.game});

  final Map<String, dynamic> game;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              height: 630,
              decoration: const BoxDecoration(
                  color: Color(0xFF101010),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(50))),
              child: Stack(
                children: [
                  GameDetailsHeader(game: game),
                  GameDetail(
                    game: game,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 40, 20, 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Favourite weapons',
                    style: GoogleFonts.syne(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF727272)),
                  ),
                  Column(
                    children: const [
                      FavouriteWeapon(),
                      FavouriteWeapon(),
                      FavouriteWeapon(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
