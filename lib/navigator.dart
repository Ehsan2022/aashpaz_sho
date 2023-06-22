import 'package:aashpaz_sho/screens/favorites.dart';
import 'package:aashpaz_sho/screens/foodExplore.dart';
import 'package:aashpaz_sho/screens/home.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _pageIndex = 0;

  List<Widget> _pages = [
    const HomePage(),
    const Favorites(),
    const FoodExplore(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" آشپز شو "),backgroundColor: Colors.pinkAccent,),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 5),
        child: BottomNavyBar(
          animationDuration: Duration(milliseconds: 200),
          backgroundColor: Colors.pinkAccent,
          selectedIndex: _pageIndex,
          onItemSelected: (i){
            setState(() {
              _pageIndex = i ;
            });
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(icon: Icon(Icons.home_filled, color: Colors.white,), title:Text('خانه',style: TextStyle(color: Colors.white),),),
            BottomNavyBarItem(icon: Icon(Icons.favorite, color: Colors.white,), title:Text('پسندیده ها',style: TextStyle(color: Colors.white),),),
            BottomNavyBarItem(icon: Icon(Icons.fastfood, color: Colors.white,), title:Text('جستجو',style: TextStyle(color: Colors.white),),),
          ],
        ),
      ),
      body: _pages[_pageIndex],
    );
  }
}
