import 'package:flutter/material.dart';


class FoodExplore extends StatelessWidget {
  const FoodExplore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(142, 248, 216, 240),
      child: Center(
        child: Text(
          "به زودی ...",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}