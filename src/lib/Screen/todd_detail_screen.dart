import 'package:amata/main.dart';
import 'package:amata/todo_sample.dart';
import 'package:flutter/material.dart';


class TodoDetailScreen extends StatefulWidget {

  final TodoSample todo;
  const TodoDetailScreen({Key? key, required this.todo}) : super(key: key);

  @override
  State<TodoDetailScreen> createState() => _TodoDetailScreenState(todo);
}

class _TodoDetailScreenState extends State<TodoDetailScreen>{
  
  bool _isChecked = false;

  _TodoDetailScreenState(TodoSample todo);

  @override
  Widget build(BuildContext context) {
    TodoSample todo = widget.todo;
    return Scaffold(


      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HomePage()));
            }, icon: Icon(Icons.home)),
            IconButton(onPressed: () {}, icon: Icon(Icons.calendar_month_outlined)),
            IconButton(onPressed: () {}, icon : Icon(Icons.chat_bubble_outline)),
            IconButton(onPressed: () {}, icon: Icon(Icons.person_outline)),
          ],
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(20),
                  child: Container(
                    child: Center(child: Text(todo.storeName,style: TextStyle(fontSize: 30))),
                    width: double.maxFinite,
                    padding: EdgeInsets.only(top:5,bottom:10),
                    decoration: const BoxDecoration(
                        color: const Color(0xFFFAFAFA),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),

                    ),

                  ),
                ),
                pinned: true,
                expandedHeight: 180.0,
                flexibleSpace: FlexibleSpaceBar(

                  background: Image.asset(todo.imgPath, fit: BoxFit.cover,),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[

                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) => Container(
                      margin: EdgeInsets.only(left: 10,top: 20, right: 10,bottom: 10),
                      child: PhysicalModel(
                        color: Colors.white,
                        elevation: 3,
                        shadowColor:Colors.black.withAlpha(70),
                        borderRadius: BorderRadius.circular(20),
                        child: ListTile(
                          onTap: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          contentPadding: EdgeInsets.only(left:30),

                          title: Text(todo.todoText,style: TextStyle(fontSize: 16, color: Colors.black),),
                          trailing: Checkbox(
                            value: todo.isDone,
                            onChanged: (value){
                              setState(() {
                                todo.isDone = value!;
                              });
                            },
                          ),
                        ),
                      ),

                    ),

                  childCount: 1,


              ),
              )
            ],
          ),




        ],




        ),
    );
  }
}


