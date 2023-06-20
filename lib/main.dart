import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:  Text("DOGS"),
          leading:  Icon(Icons.menu),
          centerTitle: false,
          backgroundColor: Colors.brown[800],
        ),
        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.camera_alt, color: Colors.brown[600],),
                Icon(Icons.home, color: Colors.brown[600],),
                Icon(Icons.message, color: Colors.brown[600],),
              ],
            ),
          ),
        ),
      ),
    );
  }
}