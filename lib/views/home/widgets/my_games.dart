import 'package:flutter/material.dart';
import 'package:game_app/data/games.dart';
import 'package:game_app/views/home/widgets/game_card.dart';
import 'package:game_app/views/home/widgets/mygames_header.dart';

class MyGames extends StatelessWidget {
  const MyGames({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // I added height to solve this error "RenderBox was not laid out: RenderFlex#d956f relayoutBoundary=up6 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE". I think it was caused by making column the parent of listview
      height: 480,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MyGameHeader(),
          const SizedBox(
            height: 30,
          ),
          // const GameCard(),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: games.length,
              separatorBuilder: (context, index) => const SizedBox(
                width: 25,
              ),
              itemBuilder: (context, index) {
                return GameCard(game: games[index]);
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
