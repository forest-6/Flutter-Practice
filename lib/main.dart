import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("DOG COMMUNITY"),
          centerTitle: false,
          backgroundColor: Color(0xff617A55),
        ),
        body: Main(),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.favorite,
                  color: Color(0xff617A55),
                ),
                Icon(
                  Icons.pets,
                  color: Color(0xff617A55),
                ),
                Icon(
                  Icons.person,
                  color: Color(0xff617A55),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                decoration: BoxDecoration(
                  color: Color(0xffAECAA1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text('event'),
              ),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
                      child: Text('Popular dogs',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    SizedBox(
                      child: Wrap(
                        alignment: WrapAlignment.spaceAround,
                        spacing: 10,
                        runSpacing: 15,
                        children: [
                          DogComponent(),
                          DogComponent(),
                          DogComponent(),
                          DogComponent(),
                          DogComponent(),
                          DogComponent(),
                          DogComponent(),
                          DogComponent(),
                          DogComponent(),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class DogComponent extends StatelessWidget {
  const DogComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 170,
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Image.network(
              'https://cdn.pixabay.com/photo/2019/07/30/05/53/dog-4372036_1280.jpg',
              width: double.infinity,
              height: 110,
              fit: BoxFit.cover),
          Container(
            child: Text('name 1'),
          ),
          Container(
            child: Text('breed 1'),
          ),
          Container(
            child: Text('Male or Female'),
          ),
        ],
      ),
    );
  }
}
