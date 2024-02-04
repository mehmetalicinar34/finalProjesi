// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class GalaxyScreen extends StatelessWidget {
  const GalaxyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galaxies'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CategoryWidget(
              objectName: 'Milky Way Galaxy',
              routeName: '/milkyway',
            ),
            SizedBox(height: 12),
            CategoryWidget(
              objectName: 'Andromeda Galaxy',
              routeName: '/andromeda',
            ),
            SizedBox(height: 12),
            CategoryWidget(
              objectName: 'Black Eye Galaxy',
              routeName: '/blackeye',
            ),
            SizedBox(height: 12),
            CategoryWidget(
              objectName: 'Cartwheel Galaxy',
              routeName: '/cartwheel',
            ),
            SizedBox(height: 12),
            CategoryWidget(
              objectName: 'Whirlpool Galaxy',
              routeName: '/whirlpool',
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