import 'package:flutter/material.dart';
import 'package:remarka_project/pages/page1.dart';
import 'package:remarka_project/pages/page2.dart';
import 'package:remarka_project/pages/page3.dart';
import 'package:remarka_project/pages/page4.dart';
import 'package:remarka_project/pages/page5.dart';
import 'package:remarka_project/pages/page6.dart';
import 'package:remarka_project/models/menu_item.dart';
import 'package:remarka_project/pages/page7.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<menuItem> _menuItems = [
    //добавь в лист новую страницу скрола,создай новую страницу скрола в page и создай новую page в body
    menuItem(title: 'Page 1', index: 0),
    menuItem(title: 'Page 2', index: 1),
    menuItem(title: 'Page 3', index: 2),
    menuItem(title: 'Account', index: 3),
    menuItem(title: 'Page 5', index: 4),
    menuItem(title: 'Page 6', index: 5),
    menuItem(title: "Settings", index: 6),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DefaultTabController(
        length: _menuItems.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text('Remarka_Web'),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
            backgroundColor: Colors.grey[800],
            bottom: TabBar(
              isScrollable: false,
              tabs: _menuItems
                  .map(
                    (item) => Tab(
                  text: item.title,
                ),
              )
                  .toList(),
            ),
          ),
          body: TabBarView(
            children: [
              Page1(),
              Page2(),
              Page3(),
              Page4(),
              Page5(),
              Page6(),
              Page7(),
            ],
          ),
        ),
      ),
    );
  }
}
