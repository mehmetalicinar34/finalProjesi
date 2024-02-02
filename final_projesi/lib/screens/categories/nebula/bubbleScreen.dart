// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BubbleScreen extends StatelessWidget {
  const BubbleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bubble Nebula',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color.fromARGB(255, 35, 75, 145),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage('assets/images/bubble.jpeg'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 16),
            // Information about Bubble Nebula using the InfoRow widget
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 35, 75, 145),
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
                    'Bubble Nebula Information',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 35, 75, 145),
                    ),
                  ),
                  SizedBox(height: 8),
                  Divider(color: Color.fromARGB(255, 35, 75, 145)),
                  SizedBox(height: 8),
                  InfoRow(title: 'Distance from Earth:', value: '1,344 light-years'),
                  InfoRow(title: 'Radius:', value: '24 light-years'),
                  InfoRow(title: 'Age:', value: 'Less than 1 million years'),
                  InfoRow(title: 'Constellation:', value: 'Orion'),
                  InfoRow(title: 'Magnitude:', value: '4.0'),
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

  InfoRow({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
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
            color: Color.fromARGB(255, 35, 75, 145), // You can customize the color
          ),
        ),
      ],
    );
  }
}
