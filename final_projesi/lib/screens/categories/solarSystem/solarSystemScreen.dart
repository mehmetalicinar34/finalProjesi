// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class SolarSystemScreen extends StatelessWidget {
  const SolarSystemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Solar System'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CategoryWidget(
              objectName: 'Sun',
              routeName: '/sun',
            ),
            SizedBox(height: 12),
            CategoryWidget(
              objectName: 'Mercury',
              routeName: '/mercury',  
            ),
            SizedBox(height: 12),
            CategoryWidget(
              objectName: 'Venus',
              routeName: '/venus',
            ),
            SizedBox(height: 12),
            CategoryWidget(
              objectName: 'Earth',
              routeName: '/earth',
            ),
            SizedBox(height: 12),
            CategoryWidget(
              objectName: 'Moon',
              routeName: '/moon',
            ),
            SizedBox(height: 12),
            CategoryWidget(
              objectName: 'Mars',
              routeName: '/mars',
            ),
            SizedBox(height: 12),
            CategoryWidget(
              objectName: 'Jupiter',
              routeName: '/jupiter',
            ),
            SizedBox(height: 12),
            CategoryWidget(
              objectName: 'Saturn',
              routeName: '/saturn',
            ),
            SizedBox(height: 12),
            CategoryWidget(
              objectName: 'Uranus',
              routeName: '/uranus',
            ),
            SizedBox(height: 12),
            CategoryWidget(
              objectName: 'Neptune',
              routeName: '/neptune',
            ),
            SizedBox(height: 12),
            CategoryWidget(
              objectName: 'Pluto',
              routeName: '/pluto',
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  final String objectName;
  final String routeName;

  CategoryWidget({
    required this.objectName,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Ink(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          height: 75,
          padding: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                objectName,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}