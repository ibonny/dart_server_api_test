import 'dart:convert';

import 'package:http/http.dart' as http;

import '../lib/MyTestClass.dart';


class TodoRecord {
  num userId;
  num id;
  String title;
  bool completed;

  TodoRecord(this.userId, this.id, this.title, this.completed);

  TodoRecord.fromJson(Map<String, dynamic> data) {
    this.userId = data['userId'] as num;
    this.id = data['id'] as num;
    this.title = data['title'] as String;
    this.completed = data['completed'] as bool;
  }

  String toString() {
    return "TodoRecord{id='${this.userId}', userId='${this.userId}, title='${this.title}', completed='${this.completed}'}";
  }
}

void main(List<String> args) async {
    // var v1 = MyTestClass(1, 2);

    // var response = await http.get('http://jsonplaceholder.typicode.com/todos');

    // var results;

    // try {
    //   results = TodoRecord.fromJson(json.decode(response.body));
    // } catch(e) {
    //   print('error is: ${e}');

    //   results = json.decode(response.body).map((x) => TodoRecord.fromJson(x)).toList();
    // }

    // print(results);

    var box = Hive.openBox("testout");
}
