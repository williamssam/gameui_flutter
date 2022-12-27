import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentGamesHeader extends StatelessWidget {
  const RecentGamesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 20, 24, 0),
            child: SvgPicture.asset('assets/arrow-left.svg'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            'Recent games'.toUpperCase(),
            style: GoogleFonts.syne(fontSize: 50, fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }
}
