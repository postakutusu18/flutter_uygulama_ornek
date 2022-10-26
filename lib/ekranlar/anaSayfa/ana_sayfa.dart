import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../bos_sayfa.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  // Screens
  final List<Widget> _screens = [
    const BosSayfa(
      sayfaNo: 1,
    ),
    const BosSayfa(
      sayfaNo: 2,
    ),
    const BosSayfa(
      sayfaNo: 3,
    ),
    const BosSayfa(
      sayfaNo: 4,
    ),
  ];

  final List<Map<String, dynamic>> _navitems = [
    {"icon": "images/home.svg", "title": "Home"},
    {"icon": "images/search.svg", "title": "Search"},
    {"icon": "images/order.svg", "title": "Orders"},
    {"icon": "images/profile.svg", "title": "Profile"},
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Hoş Geldiniz",
          ),
        ),
      ),
      body: _screens[_selectedIndex], //BosSayfa(sayfaNo: _selectedIndex),
      bottomNavigationBar: CupertinoTabBar(
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        currentIndex: _selectedIndex,
        activeColor: Colors.green,
        inactiveColor: Colors.grey,
        items: List.generate(
          _navitems.length,
          (index) => BottomNavigationBarItem(
            icon: buildSvgIcon(
                src: _navitems[index]['icon'],
                isActive: _selectedIndex == index),
            label: _navitems[index]["title"],
          ),
        ),
      ),
    );
  }
}

SvgPicture buildSvgIcon({required String src, bool isActive = false}) {
  return SvgPicture.asset(
    src,
    height: 30,
    width: 30,
    color: isActive ? Colors.green : Colors.grey,
  );
}
