import 'package:applikasipertama/chat.dart';
import 'package:applikasipertama/home.dart';
import 'package:applikasipertama/market.dart';
import 'package:applikasipertama/setting.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var _currentIndex = 0;
  final List<Widget> screens = [
    HomeScreen(),
    MarketPage(),
    ChatPage(),
    SettingPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Colors.blue),
          SalomonBottomBarItem(
              icon: Icon(Icons.store),
              title: Text("Market"),
              selectedColor: Colors.purple),
          SalomonBottomBarItem(
              icon: Icon(Icons.chat),
              title: Text("Chat"),
              selectedColor: Colors.pink),
          SalomonBottomBarItem(
              icon: Icon(Icons.settings),
              title: Text("Setting"),
              selectedColor: Colors.blue),
        ],
      ),
    );
  }
}
