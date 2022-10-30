import 'package:flutter/material.dart';

class todo{
  final store_name;
  final todo_Text;
  bool isDone;
  
  todo({
    required this.store_name,
    required this.todo_Text,
    this.isDone = false,
  });
  
  static List<todo> todoList(){
    return [

    ];
  }
}
