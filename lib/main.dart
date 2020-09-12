import 'package:flutter/material.dart';
import 'package:timetable_flutter/common/strings.dart';
import 'package:timetable_flutter/common/style/style_colors.dart';
import 'package:timetable_flutter/ui/lecture_editor.dart';
import 'package:timetable_flutter/ui/now.dart';
import 'package:timetable_flutter/ui/timetable/timetable.dart';
import 'package:timetable_flutter/utils/widget_util.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: string_title_app,
      theme: ThemeData(
        primarySwatch: colorPrimary,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: string_title_app),
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
          buildIconButton(Icon(Icons.add), string_tooltip_add, _addLecture),
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
              title: Text(string_title_now),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              title: Text(string_title_table),
            ),
          ]),
    );
  }

  void _replacePage(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  void _addLecture() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LectureEditor()),
    );
  }
}
