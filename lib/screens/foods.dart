import 'package:aashpaz_sho/data/class.dart';
import 'package:aashpaz_sho/data/data.dart';
import 'package:aashpaz_sho/main.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'foodDetails.dart';

class Foods extends StatefulWidget {
  final List<Recipe> recipes;

  const Foods({super.key, required this.recipes});

  @override
  State<Foods> createState() => _FoodsState();
}

class _FoodsState extends State<Foods> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
        ),
        backgroundColor: const Color(0xFF222431),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                primary: false,
                shrinkWrap: true,
                itemCount: widget.recipes.length,
                itemBuilder: (context, index) => ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Colors.white,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailsPage(recipe: widget.recipes[index]),
                        ));
                  },
                  leading: IconButton(
                      onPressed: () async{
                        var box = Hive.box(FAVORITES_BOX);
                        box.put("favs",widget.recipes );
                        print('hiiiiiiiiiiiiiiiiiiiiiiiiii');
                      }, icon: const Icon(Icons.favorite_border)),
                  trailing: Image.network(widget.recipes[index].image),
                  title: Center(child: Text(widget.recipes[index].name)),
                ),
                separatorBuilder: (context, index) => const Divider(
                  height: 20,
                  color: Colors.white,
                  indent: 20,
                  endIndent: 20,
                ),
              ),
            ),
          ],
        ));
  }
}
