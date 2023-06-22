import 'package:flutter/material.dart';
class Recipe {
  String id, imageUrl, title ;
  List<String> steps;
  List<String> ingredients;
  Recipe(
      {required this.id,
        required this.title,
        required this.imageUrl,
        required this.steps,
        required this.ingredients,
       });
}

class Countries{
  String id , name , flag;
  Countries({required this.id,required this.name,required this.flag});
}