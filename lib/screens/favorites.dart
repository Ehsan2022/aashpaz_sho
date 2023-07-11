import 'package:aashpaz_sho/data/class.dart';
import 'package:aashpaz_sho/main.dart';
import 'package:aashpaz_sho/screens/foods.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'foodDetails.dart';

class Favorites extends StatefulWidget {
   const Favorites({Key? key}) : super(key: key);


  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  double screenHeight = 0;
  double screenWidth = 0;

  bool startAnimation = false;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(142, 248, 216, 240),
      body: ValueListenableBuilder(
        valueListenable: Hive.box(FAVORITES_BOX).listenable(),
        builder: (context, box, child) {
          List<Recipe> favs = List.from(box.values);
          return ListView.separated(
            primary: false,
            shrinkWrap: true,
            itemCount: favs.length,
            itemBuilder: (context, index) => AnimatedContainer(
              height: 55,
              width: screenWidth,
              curve: Curves.easeInOut,
              duration: Duration(milliseconds: 300 + (index * 200)),
              transform: Matrix4.translationValues(startAnimation ? 0 : screenWidth, 0, 0),
              margin: const EdgeInsets.only(
                bottom: 12,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth / 20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    favs[index].name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  CircleAvatar(child: Image.network(favs[index].image,fit: BoxFit.fill,),)
                ],
              ),
            ),
            separatorBuilder: (context, index) => const Divider(
              height: 20,
              color: Colors.white,
              indent: 20,
              endIndent: 20,
            ),
          );
        },
      ),
    );
  }
}

// ListView(
// children: <Widget>[
// ...favs.map((f) => ListTile(
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(10)),
// tileColor: Colors.white,
// onTap: () {},
// title: Text(f),
// trailing: IconButton(
// onPressed: () {},
// icon: const Icon(Icons.favorite_border)),
// ))
// ],
// );
