import 'package:flutter/material.dart';

class Page7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // текст нижнего бара при отрытии скрола
      appBar: AppBar(
        title: const Center(
          child: Text('Page 7'),
        ),
      ),
      body: const Center(
        child: Text(
          'This is page 7',
          style: TextStyle(fontSize: 36),
        ),
      ),
    );
  }
}