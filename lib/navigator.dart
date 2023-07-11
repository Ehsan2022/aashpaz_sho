import 'package:aashpaz_sho/screens/about.dart';
import 'package:aashpaz_sho/screens/favorites.dart';
import 'package:aashpaz_sho/screens/foodExplore.dart';
import 'package:aashpaz_sho/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _pageIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    Favorites(),
    const FoodExplore(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" آشپز شو "),
        backgroundColor: Colors.pinkAccent,
        actions: [
          PopupMenuButton(
              itemBuilder: (cont) => [
                     const PopupMenuItem(
                      child: Text('اشتراک'),
                    ),
                     PopupMenuItem(
                      child: const Text('درباره'),
                      onTap: () {
                        Navigator.pushNamed(context, 'about');
                      },
                    ),
                    const PopupMenuItem(
                      textStyle: TextStyle(color: Colors.red),
                      child: Text('خروج'),
                    ),
                  ])
        ],
      ),
      bottomNavigationBar: BottomNavyBar(
        animationDuration: const Duration(milliseconds: 200),
        backgroundColor: Colors.pinkAccent,
        selectedIndex: _pageIndex,
        onItemSelected: (i) {
          setState(() {
            _pageIndex = i;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: const Icon(
              Icons.home_filled,
              color: Colors.white,
            ),
            title: const Text(
              'خانه',
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavyBarItem(
            icon: const Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            title: const Text(
              'پسندیده ها',
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavyBarItem(
            icon: const Icon(
              Icons.fastfood,
              color: Colors.white,
            ),
            title: const Text(
              'غذاهای بیشتر',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: _pages[_pageIndex],
    );
  }
}
