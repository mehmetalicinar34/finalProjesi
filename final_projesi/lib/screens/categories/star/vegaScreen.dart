// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class VegaScreen extends StatelessWidget {
  const VegaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Vega',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color.fromARGB(255, 0, 89, 194),
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
                  image: AssetImage('assets/images/vega.jpeg'),
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
                    color: Color.fromARGB(255, 0, 89, 194),
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
                    'Vega Information',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 89, 194),
                    ),
                  ),
                  SizedBox(height: 8),
                  Divider(color: Color.fromARGB(255, 0, 89, 194)),
                  SizedBox(height: 8),
                  InfoRow(title: 'Magnitude:', value: '0.03'),
                  InfoRow(title: 'Distance from Earth:', value: '25 light years'),
                  InfoRow(title: 'Surface Temperature:', value: '9300°C'),
                  InfoRow(title: 'Mass:', value: '2 M☉'),
                  InfoRow(title: 'Radius:', value: '1.6 million km'),
                  InfoRow(title: 'Constellation:', value: 'Lyra'),
                  InfoRow(title: 'Luminosity:', value: '40 L☉'),
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
            color: Colors.black,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 0, 89, 194),
          ),
        ),
      ],
    );
  }
}
