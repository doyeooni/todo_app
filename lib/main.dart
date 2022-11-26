import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Todo {
  bool isDone = false;
  String title;

  Todo(this.title);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _items = <Todo>[];

  TextEditingController _todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("남은 할 일"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Expanded(child: TextField(
                  controller: _todoController,
                )),
                ElevatedButton(onPressed: () {
                  print(_todoController.text);
                }, child: Text('추가')),
              ],
            ),
            Expanded(
              child: ListView(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
