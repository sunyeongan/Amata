import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            elevation: 0.0,
          leading: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: null),
          actions: [
            IconButton(icon: Icon(Icons.notifications_none_outlined), onPressed: null),
          ],
            backgroundColor: Colors.white12
        ),

        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.home)),
              IconButton(onPressed: () {}, icon: Icon(Icons.calendar_month_outlined)),
              IconButton(onPressed: () {}, icon : Icon(Icons.chat_bubble_outline)),
              IconButton(onPressed: () {}, icon: Icon(Icons.person_outline)),
            ],
          ),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(5, 20, 5, 0),
          child: Stack(
            children: [
              Positioned(
                top : 30,
                width : 300,
                height: 100,

                child: Text(
                    '선영 Todo',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
                ),
              ),
              Positioned(
                top : 100,
                width : 380,
                height: 200,
                child: Container(
                  child: Row(
                      children : [
                        Container(
                          padding:EdgeInsets.fromLTRB(15, 0, 5, 70),
                          child : ClipRRect(
                            borderRadius: BorderRadius.circular(45.0),
                            child : Image.asset(
                              'imgs/olive-logo.png',width: 70.0,
                            ),

                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('올리브영',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,height: 2.2,),),
                              Text('당근 토너패드 구매 외 2개',style: TextStyle(fontSize: 15,),),
                              Row(
                                children: [
                                  SizedBox(
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                                      padding: EdgeInsets.fromLTRB(10, 5,10, 5),
                                      color: Colors.white70,
                                      child: Row(
                                        children : [
                                          Icon(Icons.arrow_upward_outlined),
                                          Text(' 652m',style: TextStyle(fontWeight: FontWeight.bold),)
                                        ],

                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                      padding: EdgeInsets.fromLTRB(10, 5,10, 5),
                                      color: Colors.white70,
                                      child: Row(
                                        children : [
                                          Icon(Icons.check_box_outlined),
                                          Text(' 1/3',style: TextStyle(fontWeight: FontWeight.bold),)
                                        ],

                                      ),
                                    ),
                                  ),
                                ],

                              ),

                            ],
                          ),
                        ),

                      ],

                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffD6EBE8),
                    borderRadius: BorderRadius.all(
                      Radius.circular(22.0),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 250,
                width : 380,
                height: 200,
                child: Container(
                    child: Row(
                      children : [
                        Container(
                          padding:EdgeInsets.fromLTRB(15, 0, 5, 70),
                          child : ClipRRect(
                            borderRadius: BorderRadius.circular(45.0),
                            child : Image.asset(
                              'imgs/emart-logo.png',width: 70.0,
                            ),

                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('이마트',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,height: 2.2,),),
                              Text('블루베리 외 5개',style: TextStyle(fontSize: 15,),),
                              Row(
                                children: [
                                  SizedBox(
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                                      padding: EdgeInsets.fromLTRB(10, 5,10, 5),
                                      color: Colors.white70,
                                      child: Row(
                                        children : [
                                          Icon(Icons.arrow_upward_outlined),
                                          Text(' 1826m',style: TextStyle(fontWeight: FontWeight.bold),)
                                        ],

                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                      padding: EdgeInsets.fromLTRB(10, 5,10, 5),
                                      color: Colors.white70,
                                      child: Row(
                                        children : [
                                          Icon(Icons.check_box_outlined),
                                          Text(' 0/6',style: TextStyle(fontWeight: FontWeight.bold),)
                                        ],

                                      ),
                                    ),
                                  ),
                                ],

                              ),

                            ],
                          ),
                        ),

                      ],

                    ),
                  decoration: BoxDecoration(
                    color: const Color(0xffF6F0EB),
                    borderRadius: BorderRadius.all(
                      Radius.circular(22.0),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 400,
                width : 380,
                height: 200,
                child: Container(
                  child: Row(
                    children : [
                      Container(
                        padding:EdgeInsets.fromLTRB(15, 0, 5, 70),
                        child : ClipRRect(
                          borderRadius: BorderRadius.circular(45.0),
                          child : Image.asset(
                            'imgs/hallym-logo.png',width: 70.0,
                          ),

                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('일송기념도서관',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,height: 2.2,),),
                            Text('책 반납 외 1개',style: TextStyle(fontSize: 15,),),
                            Row(
                              children: [
                                SizedBox(
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                                    padding: EdgeInsets.fromLTRB(10, 5,10, 5),
                                    color: Colors.white70,
                                    child: Row(
                                      children : [
                                        Icon(Icons.arrow_upward_outlined),
                                        Text(' 82m',style: TextStyle(fontWeight: FontWeight.bold),)
                                      ],

                                    ),
                                  ),
                                ),
                                SizedBox(
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                    padding: EdgeInsets.fromLTRB(10, 5,10, 5),
                                    color: Colors.white70,
                                    child: Row(
                                      children : [
                                        Icon(Icons.check_box_outlined),
                                        Text(' 1/2',style: TextStyle(fontWeight: FontWeight.bold),)
                                      ],

                                    ),
                                  ),
                                ),
                              ],

                            ),

                          ],
                        ),
                      ),

                    ],

                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffE4E7F2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(22.0),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 550,
                width : 380,
                height: 200,
                child: Container(
                  child: Row(
                    children : [
                      Container(
                        padding:EdgeInsets.fromLTRB(15, 0, 5, 70),
                        child : ClipRRect(
                          borderRadius: BorderRadius.circular(45.0),
                          child : Image.asset(
                            'imgs/daiso-log.png',width: 70.0,
                          ),

                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('다이소',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,height: 2.2,),),
                            Text('물티슈, 돌돌이 외 4개 ',style: TextStyle(fontSize: 15,),),
                            Row(
                              children: [
                                SizedBox(
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                                    padding: EdgeInsets.fromLTRB(10, 5,10, 5),
                                    color: Colors.white70,
                                    child: Row(
                                      children : [
                                        Icon(Icons.arrow_upward_outlined),
                                        Text(' 212m',style: TextStyle(fontWeight: FontWeight.bold),)
                                      ],

                                    ),
                                  ),
                                ),
                                SizedBox(
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                    padding: EdgeInsets.fromLTRB(10, 5,10, 5),
                                    color: Colors.white70,
                                    child: Row(
                                      children : [
                                        Icon(Icons.check_box_outlined),
                                        Text(' 0/6',style: TextStyle(fontWeight: FontWeight.bold),)
                                      ],

                                    ),
                                  ),
                                ),
                              ],

                            ),

                          ],
                        ),
                      ),

                    ],

                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFEBEE),
                    borderRadius: BorderRadius.all(
                      Radius.circular(22.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}