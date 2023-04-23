import 'package:flutter/material.dart';

class NewsItem {
  final String title;
  final String description;
  final String imageUrl;
  final String pageUrl;

  NewsItem({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.pageUrl,
  });

  Widget buildButton(BuildContext context) { // это виджет новостей
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, pageUrl);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            height: 100,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            description,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}
