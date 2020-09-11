import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Timetable'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var _index = 0;

  void _replacePage(int index) {
    setState(() {
      _index = index;
    });
  }

  void _addClass() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
              icon: Icon(Icons.add),
              iconSize: 30.0,
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 14.0, 0.0),
              onPressed: _addClass)
        ],
      ),
      body: Container(

      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (index) {
            _replacePage(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.watch),
              title: Text('Now'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              title: Text('Table'),
            ),
          ]),
    );
  }
}
