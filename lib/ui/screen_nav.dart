import 'package:flutter/material.dart';
import 'package:shoppingapp/ui/cloth_detail.dart';
import 'package:shoppingapp/ui/home.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import 'search_page.dart';

class Navigationbar extends StatefulWidget {
  const Navigationbar({super.key});

  @override
  State<Navigationbar> createState() => _NavigationbarState();
}

class _NavigationbarState extends State<Navigationbar> {
  int currentindex = 0;
  final screens = [
    const Home(),
    const Search(),
  ];
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => currentindex = index);
            },
            children: screens),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentindex,
        onItemSelected: (index) {
          setState(() => currentindex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            activeColor: Colors.black,
            inactiveColor: Colors.grey,
            title: Text('Home'),
            icon: Icon(Icons.home),
          ),
          BottomNavyBarItem(
            activeColor: Colors.black,
            inactiveColor: Colors.grey,
            title: Text('search'),
            icon: Icon(Icons.search),
          ),
          BottomNavyBarItem(
            activeColor: Colors.black,
            inactiveColor: Colors.grey,
            title: Text('notification'),
            icon: Icon(Icons.apps),
          ),
        ],
      ),
    );
  }
}
