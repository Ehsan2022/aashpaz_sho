import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

@HiveType(typeId: 1)

class Recipe {
  String id, image, name ;
  List<String> steps;
  List<String> ingredients;
  Recipe(
      {required this.id,
        @HiveField(0)
        required this.name,
        @HiveField(1)
        required this.image,
        required this.steps,
        required this.ingredients,
       });
}

class Countries{
  String id , name , flag;
  Countries({required this.id,required this.name,required this.flag});
}

class Likes{
  String name, image;
  Likes({required this.name,required this.image});
}


class Nutrients {
  String name;
  String weight;
  double percent;
  Nutrients({required this.name, required this.weight, required this.percent});
}
