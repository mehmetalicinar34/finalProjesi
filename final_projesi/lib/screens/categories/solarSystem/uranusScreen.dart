// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class UranusScreen extends StatelessWidget {
  const UranusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Uranus'),
        backgroundColor: Color.fromARGB(255, 196, 234, 237),
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
                  image: AssetImage('assets/images/uranus.jpeg'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 196, 234, 237),
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
                    'Uranus Information',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 138, 172, 174),
                    ),
                  ),
                  SizedBox(height: 8),
                  Divider(color: Color.fromARGB(255, 138, 172, 174)),
                  SizedBox(height: 8),
                  InfoRow(title: 'Distance from Sun:', value: '36 million miles'),
                  InfoRow(title: 'Diameter:', value: '4,880 km'),
                  InfoRow(title: 'Size:', value: 'Small rocky planet'),
                  InfoRow(title: 'Mass:', value: '3.301 x 10^23 kg'),
                  InfoRow(title: 'Age:', value: '4.5 billion years'),
                  InfoRow(title: 'Surface Temperature:', value: '430°C'),
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
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 138, 172, 174),
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
      ],
    );
  }
}
