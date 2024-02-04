// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore the Universe'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(height: 100),
            _DrawerButton(context, 'Profile', '/profile'),
            Divider(),
            _DrawerButton(context, 'Contact', '/contact'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CategoryWidget(
                    categoryName: 'Solar System',
                    routeName: '/solarsystem',
                    svgPath: 'assets/images/solar_system.svg',
                  ),
                  CategoryWidget(
                    categoryName: 'Galaxies',
                    routeName: '/galaxy',
                    svgPath: 'assets/images/galaxy.svg',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CategoryWidget(
                    categoryName: 'Stars',
                    routeName: '/star',
                    svgPath: 'assets/images/star.svg',
                  ),
                  CategoryWidget(
                    categoryName: 'Nebulas',
                    routeName: '/nebula',
                    svgPath: 'assets/images/nebula.svg',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CategoryWidget(
                    categoryName: 'Black Holes',
                    routeName: '/blackhole',
                    svgPath: 'assets/images/black_hole.svg',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _DrawerButton(BuildContext context, String label, String route) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, route);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        width: double.infinity,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  final String categoryName;
  final String routeName;
  final String svgPath;

  CategoryWidget({
    required this.categoryName,
    required this.routeName,
    required this.svgPath,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(16),
        width: 200,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(
              svgPath,
              height: 130,
            ),
            SizedBox(height: 70),
            Text(
              categoryName,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
