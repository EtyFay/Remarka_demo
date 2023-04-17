import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // текст нижнего бара при отрытии скрола
      appBar: AppBar(
        title: const Center(
          child: Text('Page 5'),
        ),
      ),
      body: const Center(
        child: Text(
          'This is page 5',
          style: TextStyle(fontSize: 36),
        ),
      ),
    );
  }
}