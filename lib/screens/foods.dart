import 'package:aashpaz_sho/data/class.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import '../main.dart';
import 'foodDetails.dart';

class Foods extends StatefulWidget {
  final List<Recipe> recipes;
  const Foods({super.key, required this.recipes});

  @override
  State<Foods> createState() => _FoodsState();
}

class _FoodsState extends State<Foods> {
  // Widget icon = Icon(Icons.favorite_border);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 16, 48, 63),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 34, 138, 86),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
              child: ListView.separated(
                primary: false,
                shrinkWrap: true,
                itemCount: widget.recipes.length,
                itemBuilder: (context, index) {
                  final box = Boxes.getRecipe();
                  final isFav = box.get(index)?.id == widget.recipes[index].id;
                  return ListTile(
                    contentPadding: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    tileColor: const Color.fromARGB(255, 34, 138, 86),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailsPage(recipe: widget.recipes[index]),
                          ));
                    },
                    leading: IconButton(
                      onPressed: () {
                        addRecipe(
                            widget.recipes[index].id,
                            widget.recipes[index].image,
                            widget.recipes[index].name,
                            widget.recipes[index].steps,
                            widget.recipes[index].ingredients);
                        const snackbar = SnackBar(
                          content: Center(child: Text('موفقانه پسندیده شد!')),
                          backgroundColor: Color.fromARGB(255, 34, 138, 86),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                        setState(() {

                        });
                      },
                      icon: Icon(
                        isFav ? Icons.favorite : Icons.favorite_border,
                        color: Colors.red,
                      ),
                    ),
                    trailing: Image.network(widget.recipes[index].image),
                    title: Center(
                        child: Text(
                      widget.recipes[index].name,
                      style: const TextStyle(color: Colors.white),
                    )),
                  );
                },
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

  Future addRecipe(
    String id,
    String image,
    String name,
    List<String> steps,
    List<String> ingredients,
  ) async {
    final recipe =
        Recipe(id: '', name: '', image: '', steps: [], ingredients: [])
          ..id = id
          ..image = image
          ..name = name
          ..steps = steps
          ..ingredients = ingredients;
    final box = Boxes.getRecipe();
    box.add(recipe);
  }
}

class Boxes {
  static Box<Recipe> getRecipe() => Hive.box<Recipe>(RecipeBok);
}
