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
        body: Container(
            height: 140, width: 350,
            margin: EdgeInsets.fromLTRB(40, 20, 40, 20),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
                Container(
                    width: 120, height: 120,
                    margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/dog.jpeg'),
                        ),
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        child: Text("핫도그 (수컷, 4살)", style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ))
                    ),
                    Text("닥스훈트", style: TextStyle(
                      fontSize: 15,
                    )),
                    SizedBox(
                        child: Text("서초구 양재동 - 업데이트 23분전", style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey
                        ))
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.thumb_up_alt_outlined),
                        Text("48"),
                      ],
                    ),
                  ],
                ),)
              ],
            )
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