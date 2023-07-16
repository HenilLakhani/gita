import 'package:flutter/material.dart';
import 'package:gita/view/audio/song.dart';
import 'package:gita/view/screens/gita.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    GitaPage(),
    AudioPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue.shade200,
              Colors.purple.shade200,
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: GNav(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              tabBorderRadius: 20,
              hoverColor: Colors.black,
              curve: Curves.decelerate,
              tabBorder: Border.all(color: Colors.black, width: 1),
              activeColor: Colors.white,
              tabs: const [
                GButton(
                  icon: Icons.menu,
                  text: ' shalok',
                  backgroundGradient: LinearGradient(colors: [
                    Colors.blue,
                    Colors.red,
                  ]),
                ),
                GButton(
                  icon: Icons.music_note_outlined,
                  text: ' Song',
                  backgroundGradient: LinearGradient(colors: [
                    Colors.redAccent,
                    Colors.amberAccent,
                  ]),
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                  const GitaPage();
                  const AudioPage();
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
