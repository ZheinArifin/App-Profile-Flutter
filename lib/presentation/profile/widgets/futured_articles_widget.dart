import 'package:flutter/material.dart';

Container FeaturedArticlesWidget() {
  return Container(
    margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
    padding: EdgeInsets.all(20),
    height: 200,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.blueGrey,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.blueGrey[700],
          ),
          child: Text(
            'Featured Article',
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Natural mood regulation low or even absent in people with depression',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
