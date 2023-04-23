import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold( // текст нижнего бара при отрытии скрола- добавь appbar
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF6A5ACD), Color(0xFF303030)],
          ),
        ),
        child: Center(
          child: Text(
            'products',
            style: TextStyle(fontSize: 36, color: Colors.white),
          ),
        ),
      ),
    );
  }
}