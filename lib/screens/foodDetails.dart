import 'package:flutter/material.dart';
import '../data/class.dart';

class DetailsPage extends StatelessWidget {
   Recipe? recipe;
   DetailsPage({super.key,  this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 16, 48, 63),

      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: const Color.fromARGB(255, 34, 138, 86),
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              title: Text(recipe!.name),
              flexibleSpace: FlexibleSpaceBar(
                background: Hero(
                  tag: recipe!.id,
                  child: FadeInImage(
                    image: NetworkImage(recipe!.image),
                    fit: BoxFit.cover,
                    placeholder: const AssetImage('assets/loading.gif'),
                  ),
                ),
              ),
            ),
          ];
        },
        body: Container(
          padding: const EdgeInsets.only(top: 8.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                const Text('ترکیبات',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                IngredientsWidget(
                  ingredients: recipe?.ingredients,
                ),
                const Divider(
                    color: Colors.white, endIndent: 40.0, indent: 40.0),
                const Text('طرز پخت',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white)),
                RecipeSteps(
                  steps: recipe!.steps,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RecipeSteps extends StatelessWidget {
  final List<String> steps;
  const RecipeSteps({super.key, this.steps = const []});

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: steps.length,
      padding: const EdgeInsets.all(0.0),
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
            trailing: CircleAvatar(
              backgroundColor:  const Color.fromARGB(255, 153, 213, 238),
              child: Text('${index + 1}',
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(steps[index],
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
              ],
            ));
      },
    );
  }
}

class IngredientsWidget extends StatelessWidget {
  final List<String>? ingredients;
  const IngredientsWidget({super.key, this.ingredients});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      width: double.infinity,
      child: ListView.builder(
        itemCount: ingredients!.length,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Chip(

              backgroundColor: const Color.fromARGB(255, 153, 213, 238),
              label: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ingredients![index],
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Text(" : ${index + 1}"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
