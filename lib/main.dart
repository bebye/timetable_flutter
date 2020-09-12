import 'package:flutter/material.dart';
import 'package:timetable_flutter/common/style/style_colors.dart';
import 'package:timetable_flutter/ui/lecture_editor.dart';
import 'package:timetable_flutter/ui/now.dart';
import 'package:timetable_flutter/ui/timetable/timetable.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: colorPrimary,
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
  var _pageIndex = 0;
  var _pages = [Now(), Timetable()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
              icon: Icon(Icons.add),
              iconSize: 30.0,
              padding: const EdgeInsets.only(top: 14.0, bottom: 14.0),
              onPressed: () => _addClass(context))
        ],
      ),
      body: _pages[_pageIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _pageIndex,
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

  void _replacePage(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  void _addClass(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LectureEditor()),
    );
  }
}
