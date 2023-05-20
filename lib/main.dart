import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kelvin',
      home: HomePage(),
      theme: ThemeData(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('hello welcome'), backgroundColor: Colors.blueGrey),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                count = count + 1;
              });
            },
            child: Icon(Icons.add)),
        body: Center(
          child: Text('this button is clicked this many times:$count'),
        ));
  }
}
