// ignore: avoid_web_libraries_in_flutter
import 'dart:js';
import 'package:flutter/material.dart';
import 'package:remarka_project/pages/menu_new.dart';
import 'package:remarka_project/pages/news.dart';
import 'package:remarka_project/pages/staff.dart';
import 'package:remarka_project/pages/job_openings.dart';
import 'package:remarka_project/pages/account.dart';
import 'package:remarka_project/pages/products.dart';
import 'package:remarka_project/pages/settings.dart';
import 'package:remarka_project/models/menu_item.dart';
import 'package:remarka_project/pages/page7.dart';
import 'package:remarka_project/models/welcome.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: true,
      initialRoute: '/pageWelcome', // открой эту страницу при запуске приложения
      routes: {
        "/pageWelcome": (context) => Welcome(),
        "/": (context) => MyApp(),
        "/StartMenu": (context) => Menu_new(),
        "/Staff": (context) => Staff(),
        "/Settings": (context) => Settings(),
      },
    ),
  );
}

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
        primarySwatch: Colors.deepPurple,
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
            backgroundColor: Colors.deepPurple,
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
              News(),
              Staff(),
              Job_openings(),
              Account(),
              Products(),
              Settings(),
              Page7(),
            ],
          ),
        ),
      ),
    );
  }
}
