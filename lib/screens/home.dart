import 'package:aashpaz_sho/data/class.dart';
import 'package:aashpaz_sho/screens/favorites.dart';
import 'package:aashpaz_sho/screens/foodExplore.dart';
import 'package:aashpaz_sho/screens/foods.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:aashpaz_sho/data/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  List<Widget> pages = [
    const HomePage(),
    const Favorites(),
    const FoodExplore(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        CarouselSlider(
          options:
              CarouselOptions(height: 200.0, autoPlay: true, reverse: false),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey),
                      child: Text(
                        'text $i',
                        style: TextStyle(fontSize: 16.0),
                      )),
                );
              },
            );
          }).toList(),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              itemCount: Data.countries.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
              itemBuilder: (context, index) => GridTile(
                footer: Center(child: Text(Data.countries[index].name)),
                child: GestureDetector(
                  child: Image.network(Data.countries[index].flag),
                  onTap: () {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Foods()));
                    });
                  },
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
