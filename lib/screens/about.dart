import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("درباره"),backgroundColor: Colors.pinkAccent,),
        body: Column(
          children: [
            Container(
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text('نسخه : 0.0.1',style: TextStyle(color: Colors.white),),
                  Text('توسعه دهنده : محمد احسان نیک سرشت',style: TextStyle(color: Colors.white),),
                  Text('تاریخ  : 1402/2023',style: TextStyle(color: Colors.white),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
