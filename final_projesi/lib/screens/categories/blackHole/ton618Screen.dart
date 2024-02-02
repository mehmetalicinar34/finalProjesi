// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TonScreen extends StatelessWidget {
  const TonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TON 618',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 11, 9, 20),
        iconTheme: IconThemeData(color: Colors.white),
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
                  image: AssetImage('assets/images/ton618.jpeg'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 16),
            // Information about TON 618 using the InfoRow widget
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 11, 9, 20),
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
                    'TON 618 Information',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 11, 9, 20),
                    ),
                  ),
                  SizedBox(height: 8),
                  Divider(color: Color.fromARGB(255, 11, 9, 20)),
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
            color: Color.fromARGB(255, 11, 9, 20),
          ),
        ),
      ],
    );
  }
}
