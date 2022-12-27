import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_app/views/home/widgets/home_header.dart';
import 'package:game_app/views/home/widgets/my_games.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        systemNavigationBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: const [
            HomeHeader(),
            SizedBox(
              height: 60,
            ),
            MyGames()
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTap,
          currentIndex: _selectedIndex,
          backgroundColor: Colors.black,
          elevation: 0,
          // unselectedItemColor: Colors.red,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/home.svg',
                  color: _selectedIndex == 0
                      ? Colors.white
                      : const Color(0xFFBCBCBC),
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/calender.svg',
                  color: _selectedIndex == 1
                      ? Colors.white
                      : const Color(0xFFBCBCBC),
                ),
                label: 'Calender'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/bell.svg',
                  color: _selectedIndex == 2
                      ? Colors.white
                      : const Color(0xFFBCBCBC),
                ),
                label: 'Notification'),
            // BottomNavigationBarItem(
            //     icon: Container(
            //       width: 30,
            //       height: 30,
            //       decoration: const BoxDecoration(
            //           shape: BoxShape.circle, color: Color(0xFFBCBCBC)),
            //       child: Image.asset('assets/avatar.png'),
            //     ),
            //     label: 'User Profile'),
          ],
        ),
      ),
    );
  }
}
