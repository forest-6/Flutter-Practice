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
          'https://images.pexels.com/photos/13853936/pexels-photo-13853936.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
    },
    {
      'name': '초코',
      'breed': '푸들',
      'gender': '수컷',
      'imgUrl':
          'https://images.pexels.com/photos/8576306/pexels-photo-8576306.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
    },
    {
      'name': '콩이',
      'breed': '닥스훈트',
      'gender': '암컷',
      'imgUrl':
          'https://images.pexels.com/photos/726199/pexels-photo-726199.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
    },
    {
      'name': '까미',
      'breed': '포메라니안',
      'gender': '암컷',
      'imgUrl':
          'https://images.pexels.com/photos/8473513/pexels-photo-8473513.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
    },
    {
      'name': '뽀삐',
      'breed': '말티즈',
      'gender': '암컷',
      'imgUrl':
          'https://images.pexels.com/photos/15421201/pexels-photo-15421201/free-photo-of-cute-dog-lying-on-a-person-s-lap.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
    },
    {
      'name': '똘이',
      'breed': '시츄',
      'gender': '수컷',
      'imgUrl':
          'https://images.pexels.com/photos/10822580/pexels-photo-10822580.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
    },
    {
      'name': '장군',
      'breed': '재패니즈 스피츠',
      'gender': '암컷',
      'imgUrl':
          'https://images.pexels.com/photos/9378531/pexels-photo-9378531.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
    },
    {
      'name': '숙희',
      'breed': '시베리안 허스키',
      'gender': '수컷',
      'imgUrl':
          'https://images.pexels.com/photos/3715583/pexels-photo-3715583.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
    },
    {
      'name': '마음이',
      'breed': '진돗개',
      'gender': '암컷',
      'imgUrl':
          'https://images.pexels.com/photos/7390494/pexels-photo-7390494.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
    },
    {
      'name': '아리',
      'breed': '시바',
      'gender': '암컷',
      'imgUrl':
          'https://images.pexels.com/photos/15837136/pexels-photo-15837136/free-photo-of-a-shiba-dog-on-a-street.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
    },
    {
      'name': '포도',
      'breed': '단모 치와와',
      'gender': '수컷',
      'imgUrl':
          'https://images.pexels.com/photos/191353/pexels-photo-191353.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
    },
    {
      'name': '짱구',
      'breed': '퍼그',
      'gender': '수컷',
      'imgUrl':
          'https://images.pexels.com/photos/7788868/pexels-photo-7788868.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
    },
  ];

  @override
  Widget build(BuildContext context) {
    print(dogMockData[2]['breed']);
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
                  color: Color.fromARGB(255, 204, 216, 199),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Image.asset('dogs.png'),
              ),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
                      child: Text('Popular dogs top 12',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    SizedBox(
                      child: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 6,
                            childAspectRatio: 5 / 8,
                          ),
                          itemCount: dogMockData.length,
                          itemBuilder: (ctx, idx) => Card(
                                child: DogMiniBox(
                                  name: dogMockData[idx]['name'],
                                  breed: dogMockData[idx]['breed'],
                                  gender: dogMockData[idx]['gender'],
                                  imgUrl: dogMockData[idx]['imgUrl'],
                                ),
                              )),
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
    required this.name,
    required this.breed,
    required this.gender,
    required this.imgUrl,
  }) : super(key: key);

  final name;
  final breed;
  final gender;
  final imgUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
              flex: 4,
              child: Image.network('$imgUrl',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover)),
          Flexible(
              flex: 3,
              child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            child: Text('$name',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))),
                        SizedBox(child: Text('$breed')),
                        SizedBox(child: Text('$gender')),
                      ])))
        ],
      ),
    );
  }
}
