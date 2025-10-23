import 'package:hive/hive.dart';
part 'class.g.dart';

@HiveType(typeId: 0)
class Recipe extends HiveObject {
  @HiveField(0)
  String id;
  @HiveField(1)
  String image;
  @HiveField(2)
  String name;
  @HiveField(3)
  List<String> steps;
  @HiveField(4)
  List<String> ingredients;
  Recipe({
    required this.id,
    required this.name,
    required this.image,
    required this.steps,
    required this.ingredients,
  });
}

class Countries {
  String id, name, flag;
  Countries({required this.id, required this.name, required this.flag});
}

class Likes {
  String name, image;
  Likes({required this.name, required this.image});
}

class Nutrients {
  String name;
  String weight;
  double percent;
  Nutrients({required this.name, required this.weight, required this.percent});
}
