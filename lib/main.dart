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

  static const dogMockData = [
    {
      'name': '코코',
      'breed': '골든리트리버',
      'gender': '수컷',
      'imgUrl':
          'https://cdn.pixabay.com/photo/2019/07/30/05/53/dog-4372036_1280.jpg'
    },
    {'name': '초코', 'breed': '푸들', 'gender': '수컷', 'imgUrl': ''},
    {'name': '콩이', 'breed': '닥스훈트', 'gender': '암컷', 'imgUrl': ''},
    {'name': '까미', 'breed': '포메라리안', 'gender': '암컷', 'imgUrl': ''},
    {'name': '뽀삐', 'breed': '말티즈', 'gender': '암컷', 'imgUrl': ''},
    {'name': '똘이', 'breed': '시츄', 'gender': '수컷', 'imgUrl': ''},
    {'name': '장군', 'breed': '재패니즈 스피츠', 'gender': '암컷', 'imgUrl': ''},
    {'name': '숙희', 'breed': '시베리안 허스키', 'gender': '수컷', 'imgUrl': ''},
    {'name': '마음이', 'breed': '진돗개', 'gender': '암컷', 'imgUrl': ''},
    {'name': '아리', 'breed': '요크셔테리어', 'gender': '암컷', 'imgUrl': ''},
    {'name': '포도', 'breed': '단모 치와와', 'gender': '수컷', 'imgUrl': ''},
    {'name': '방울이', 'breed': '비숑', 'gender': '수컷', 'imgUrl': ''},
    {'name': '짱구', 'breed': '퍼그', 'gender': '수컷', 'imgUrl': ''},
  ];

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
                          DogMiniBox(),
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

class DogMiniBox extends StatelessWidget {
  const DogMiniBox({
    Key? key,
    required this.dogDate,
  }) : super(key: key);

  final dogDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 180,
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
              'https://cdn.pixabay.com/photo/2019/07/30/05/53/dog-4372036_1280.jpg',
              width: double.infinity,
              height: 110,
              fit: BoxFit.cover),
          SizedBox(
            child: Text('$dogDate.name'),
          ),
          SizedBox(
            child: Text('$dogDate.breed'),
          ),
          SizedBox(
            child: Text('$dogDate.gender'),
          ),
        ],
      ),
    );
  }
}
