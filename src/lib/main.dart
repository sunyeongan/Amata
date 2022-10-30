import 'package:amata/todo_sample.dart';
import 'package:flutter/material.dart';
import 'Screen/todd_detail_screen.dart';
import 'Screen/login_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : LoginScreen(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  static List<String> storeName = [
    '올리브영',
    '이마트',
    '일송기념도서관',
    '다이소',
    '공학관',
    'CLC'


  ];

  static List<String> storeImagePath = [
    './imgs/olive-logo.png',
    './imgs/emart-logo.png',
    './imgs/hallym-logo.png',
    './imgs/daiso-log.png',
    './imgs/olive-logo.png',
    './imgs/hallym-logo.png'

  ];

  static List<String> todoText = [
    '당근 토너패드 구매',
    '블루베리 구매',
    '책 2권 반납하기',
    '이사용 단프라 박스 구매',
    '행정실에 서류제출',
    '학지팀 방문'
  ];

  final List<TodoSample> todoSampleData = List.generate(
      todoText.length, (index) =>
      TodoSample(
          storeName[index], todoText[index], storeImagePath[index], false));

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          leading: IconButton(
              icon: Icon(Icons.add_circle_outline), onPressed: null),
          actions: [
            IconButton(
                icon: Icon(Icons.notifications_none_outlined), onPressed: null),
          ],
          backgroundColor: Colors.white
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.home)),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.calendar_month_outlined)),
            IconButton(onPressed: () {}, icon: Icon(Icons.chat_bubble_outline)),
            IconButton(onPressed: () {}, icon: Icon(Icons.person_outline)),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            child: Text(
              "선영 Todo", style: TextStyle(color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold),),
            top: 40,
            left: 20,
          ),

          Container(
            margin: EdgeInsets.only(top: 130),
            decoration: BoxDecoration(
              color: const Color(0xffD6EBE8),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),),
            ),
            child: ListView.builder(
              itemCount: todoSampleData.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ListTile(
                    title: Padding(
                      padding: EdgeInsets.symmetric(vertical: 9.0),
                      child: Text(
                        todoSampleData[index].storeName, style: TextStyle(
                          color: Colors.grey[900],
                          fontWeight: FontWeight.bold),),
                    ),
                    leading: SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset(todoSampleData[index].imgPath),

                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              TodoDetailScreen(todo: todoSampleData[index],)));
                      debugPrint(todoSampleData[index].storeName);
                    },
                    subtitle: Text(
                      todoSampleData[index].todoText, style: TextStyle(
                      color: Colors.grey[700],),),
                    trailing: const Icon(Icons.more_horiz),
                    isThreeLine: true,
                  ),
                );
              },


            ),

          ),


        ],

      ),
    );
  }
}

