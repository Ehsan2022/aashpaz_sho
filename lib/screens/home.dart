import 'package:aashpaz_sho/screens/foodDetails.dart';
import 'package:aashpaz_sho/screens/foods.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:aashpaz_sho/data/data.dart';

import '../data/class.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(142, 248, 216, 240),
        body: Column(
          children: <Widget>[
            CarouselSlider(
              options: CarouselOptions(
                  height: 200.0, autoPlay: true, reverse: false),
              items: [0, 1, 2, 3].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      DetailsPage(recipe: Data.afghani[i]),
                                ));
                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Image.network(
                            Data.afghani[i].image,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Center(
                child: Text(
              'غذا ها',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: GridView.builder(
                  itemCount: Data.countries.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) => GridTile(
                    footer: Center(child: Text(Data.countries[index].name)),
                    child: GestureDetector(
                      child: Image.network(Data.countries[index].flag),
                      onTap: () {
                        setState(() {
                          List<Recipe> temp = List.empty(growable: true);
                          switch (index) {
                            case 0:
                              temp = Data.afghani;
                              break;
                            case 1:
                              temp = Data.irani;
                              break;
                            case 2:
                              temp = Data.hindi;
                              break;
                            case 3:
                              temp = Data.turkey;
                              break;
                          }
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Foods(
                                recipes: temp,
                              ),
                            ),
                          );
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
