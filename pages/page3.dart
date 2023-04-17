import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // текст нижнего бара при отрытии скрола
      appBar: AppBar(
        title: const Center(
          child: Text('Page 3'),
        ),
      ),
      body: const Center(
        child: Text(
          'This is page 3',
          style: TextStyle(fontSize: 36),
        ),
      ),
    );
  }
}