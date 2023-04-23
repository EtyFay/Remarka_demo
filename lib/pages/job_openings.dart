import 'package:flutter/material.dart';

class Job_openings extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
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
            'Job',
            style: TextStyle(fontSize: 36, color: Colors.white),
          ),
        ),
      ),
    );
  }
}