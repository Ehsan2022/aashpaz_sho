import 'package:aashpaz_sho/data/class.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'foodDetails.dart';

class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Box<Recipe> box = Hive.box<Recipe>("favorites");
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 16, 48, 63),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
              child: ListView.separated(
                primary: false,
                shrinkWrap: true,
                itemCount: box.length,
                itemBuilder: (context, index) => ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailsPage(recipe: box.get(index)),
                        ));
                  },
                  contentPadding: const EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: const Color.fromARGB(255, 34, 138, 86),
                  trailing: IconButton(
                      onPressed: () {
                        var recipeKy = box.keyAt(index);
                        box.delete(recipeKy);
                        setState(() {
                          box = Hive.box<Recipe>("favorites");
                        });
                      },
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      )),
                  leading: Image.network(box.get(index)?.image ?? 'TEST.PNG'),
                  title:
                      Center(child: Text(box.get(index)?.name ?? 'TEST TEXT',style: TextStyle(color: Colors.white),)),
                ),
                separatorBuilder: (context, index) => const Divider(
                  height: 20,
                  color: Colors.white,
                  indent: 20,
                  endIndent: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
