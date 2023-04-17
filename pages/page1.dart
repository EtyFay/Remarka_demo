import 'package:flutter/material.dart';
import 'package:remarka_project/models/news_item.dart';
import 'package:remarka_project/pageNews/news_page.dart';
class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final List<NewsItem> newsItems = [
    NewsItem(
      title: 'World War 3',
      description: 'Description of news item 1',
      imageUrl:
      'https://images.unsplash.com/photo-1638638721817-7e9366e21e10?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2M3x8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1',
      pageUrl: '/news1',
    ),
    NewsItem(
      title: 'News item 2',
      description: 'Description of news item 2',
      imageUrl:
      'https://images.unsplash.com/photo-1638639115599-d183b0c926e4?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2NXx8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1',
      pageUrl: '/news2',
    ),
    NewsItem(
      title: 'News item 3',
      description: 'Description of news item 3',
      imageUrl:
      'https://images.unsplash.com/photo-1638639829049-3e7b1d841bae?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2OHx8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1',
      pageUrl: '/news3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: ListView.builder(
        itemCount: newsItems.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: newsItems[index].buildButton(context),
          );
        },
      ),
    );
  }
}
