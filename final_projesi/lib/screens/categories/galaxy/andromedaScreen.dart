// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AndromedaScreen extends StatelessWidget {
  const AndromedaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Andromeda Galaxy',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color.fromARGB(255, 31, 32, 37),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage('assets/images/andromeda.jpeg'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 16),
            // Information about Andromeda Galaxy using the InfoRow widget
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 31, 32, 37),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Spiral Galaxy Information',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 31, 32, 37),
                    ),
                  ),
                  SizedBox(height: 8),
                  Divider(
                      color: Color.fromARGB(255, 31, 32, 37)),
                  SizedBox(height: 8),
                  InfoRow(
                    title: 'Distance from Earth:',
                    value: '2.537 million light years',
                  ),
                  SizedBox(height: 5),
                  InfoRow(
                    title: 'Radius:',
                    value: '110,000 light years',
                  ),
                  SizedBox(height: 5),
                  InfoRow(
                    title: 'Type:',
                    value: 'Spiral',
                  ),
                  SizedBox(height: 5),
                  InfoRow(
                    title: 'Age:',
                    value: '10 billion years',
                  ),
                  SizedBox(height: 5),
                  InfoRow(
                    title: 'Stars:',
                    value: '1 trillion',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final String title;
  final String value;

  InfoRow({required this.title, required this.value, required});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
              ),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(
                    255, 31, 32, 37), // You can customize the color
              ),
            ),
          ],
        ),
      ],
    );
  }
}
