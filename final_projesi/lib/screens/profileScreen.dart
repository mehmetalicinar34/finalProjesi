// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late SharedPreferences prefs;

  @override
  void initState() {
    super.initState();
    _loadProfileData();
  }

  Future<void> _loadProfileData() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    String userName = prefs.getString('user_name') ?? '';
    String userSurname = prefs.getString('user_surname') ?? '';
    String userEmail = prefs.getString('user_email') ?? '';

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 250,
            margin: EdgeInsets.only(top: 100),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.blue,
                  blurRadius: 20,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name: $userName',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 25),
                Text(
                  'Surname: $userSurname',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 25),
                Text(
                  'Email: $userEmail',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
