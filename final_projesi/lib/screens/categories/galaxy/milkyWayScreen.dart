// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MilkyWayScreen extends StatelessWidget {
  const MilkyWayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Milky Way Galaxy'),
        backgroundColor: Color.fromARGB(255, 73, 78, 128),
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
                  image: AssetImage('assets/images/milkyway.jpeg'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 73, 78, 128),
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
                    'Milky Way Galaxy Information',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 73, 78, 128,)
                    ),
                  ),
                  SizedBox(height: 8),
                  Divider(color: Color.fromARGB(255, 73, 78, 128)),
                  SizedBox(height: 8),
                  InfoRow(
                    title: 'Distance from Earth to the center:',
                    value: '25,800 light-years',
                  ),
                  SizedBox(height: 5),
                  InfoRow(
                    title: 'Radius:',
                    value: '52,850 light years',
                  ),
                  SizedBox(height: 5),
                  InfoRow(
                    title: 'Type:',
                    value: 'Spiral',
                  ),
                  SizedBox(height: 5),
                  InfoRow(
                    title: 'Age:',
                    value: '13.61 billion years',
                  ),
                  SizedBox(height: 5),
                  InfoRow(
                    title: 'Stars:',
                    value: '100 billion',
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
                color: Color.fromARGB(255, 73, 78, 128,)
              ),
            ),
          ],
        ),
      ],
    );
  }
}
