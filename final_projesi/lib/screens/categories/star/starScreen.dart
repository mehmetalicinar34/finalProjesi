// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StarScreen extends StatelessWidget {
  const StarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Star Screen'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CategoryWidget(
              objectName: 'Sirius',
              routeName: '/sirius',
            ),
            SizedBox(height: 12),
            CategoryWidget(
              objectName: 'Betelguese',
              routeName: '/betelguese',
            ),
            SizedBox(height: 12),
            CategoryWidget(
              objectName: 'Vega',
              routeName: '/vega',
            ),
            SizedBox(height: 12),
            CategoryWidget(
              objectName: 'Antares',
              routeName: '/antares',
            ),
            SizedBox(height: 12),
            CategoryWidget(
              objectName: 'Stepehenson 2-18',
              routeName: '/stephenson',
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
          height: 60,
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  objectName,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}