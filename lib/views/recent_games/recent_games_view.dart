import 'package:flutter/material.dart';
import 'package:game_app/data/games.dart';
import 'package:game_app/views/recent_games/widgets/recent_game.dart';
import 'package:game_app/views/recent_games/widgets/recent_games_header.dart';

class RecentGamesScreen extends StatelessWidget {
  const RecentGamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            const RecentGamesHeader(),
            ...games.map((game) => RecentGame(game: game)).toList()
          ],
        ),
      ),
    );
  }
}
