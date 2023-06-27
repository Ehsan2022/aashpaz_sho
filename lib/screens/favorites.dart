import 'package:flutter/material.dart';

import '../data/data.dart';
import 'foods.dart';


class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: Data.countries.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemBuilder: (context, index) => GridTile(
          footer: Center(child: Text(Data.countries[index].name)),
          child: GestureDetector(
            child: Image.network(Data.countries[index].flag),
            onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Foods()));
            },
          ),
        ),
      ),
    );
  }
}

