import 'package:aashpaz_sho/data/class.dart';
import 'package:aashpaz_sho/data/data.dart';
import 'package:flutter/material.dart';

import 'foodDetails.dart';


class Foods extends StatefulWidget {
  const Foods({Key? key}) : super(key: key);

  @override
  State<Foods> createState() => _FoodsState();
}

class _FoodsState extends State<Foods> {
  double screenHeight = 0;
  double screenWidth = 0;

  bool startAnimation = false;

 
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        startAnimation = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pinkAccent,),
      backgroundColor: const Color(0xFF222431),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth / 20,
          ),
          child: Column(
            children: [
              const SizedBox(height: 30,),
              GestureDetector(
                onTap: () {
                  // Future.delayed(const Duration(milliseconds: 500), () {
                  //   setState(() {
                  //     startAnimation = true;
                  //   });
                  // });
                },
              ),
              const SizedBox(height: 40,),
              ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: Data.countries.length,
                itemBuilder: (context, index) {
                  return item(index);
                },
              ),
              const SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }

  Widget item(int index) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(recipe: Data.afghani[index]),));
          });
        },
        child: AnimatedContainer(
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
               Data.afghani[index].name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Image.network(Data.afghani[index].image,),
            ],
          ),
        ),
      ),
    );
  }

}