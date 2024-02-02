// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class WhirlpoolScreen extends StatelessWidget {
  const WhirlpoolScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Whirlpool Galaxy',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color.fromARGB(255, 137, 146, 157),
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
                  image: AssetImage('assets/images/whirlpool.jpeg'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 16),
            // Information about Whirlpool Galaxy using the InfoRow widget
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 137, 146, 157),
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
                      color: Color.fromARGB(255, 137, 146, 157), // You can customize the color
                    ),
                  ),
                  SizedBox(height: 8),
                  Divider(
                      color: Color.fromARGB(255, 137, 146, 157)), // You can customize the color
                  SizedBox(height: 8),
                  InfoRow(
                    title: 'Distance from Earth:',
                    value: 'Billions of light-years',
                  ),
                  SizedBox(height: 5),
                  InfoRow(
                    title: 'Diameter:',
                    value: '100,000 to 200,000 light-years',
                  ),
                  SizedBox(height: 5),
                  InfoRow(
                    title: 'Type:',
                    value: 'Spiral',
                  ),
                  SizedBox(height: 5),
                  InfoRow(
                    title: 'Age:',
                    value: 'Billions of years',
                  ),
                  SizedBox(height: 5),
                  InfoRow(
                    title: 'Stars:',
                    value: 'Hundreds of billions',
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
                color: Color.fromARGB(255, 137, 146, 157), // You can customize the color
              ),
            ),
          ],
        ),
      ],
    );
  }
}
