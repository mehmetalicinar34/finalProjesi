// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

instagram() {
  final Uri uri = Uri.parse("https://instagram.com/mali.cnr");
  launchUrl(uri);
}

linkedin() {
  final Uri uri = Uri.parse("https://www.linkedin.com/in/mehmet-ali-cinar-016968256/");
  launchUrl(uri);
}

call() {
  final Uri uri = Uri.parse("tel:+905530629058");
  launchUrl(uri);
}

sms() {
  final Uri uri = Uri.parse("sms:+905530629058");
  launchUrl(uri);
}

mail() {
  final Uri uri = Uri.parse(
      "mailto:mehmetalicinarofcl@gmail.com?subject=Merhaba&body=Merhaba nasilsiniz?");
  launchUrl(uri);
}

github() {
  final Uri uri = Uri.parse("https://github.com/mehmetalicinar34");
  launchUrl(uri);
}

thisproject() {
  final Uri uri = Uri.parse("https://github.com/mehmetalicinar34/finalProjesi");
  launchUrl(uri);
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            height: 480,
            width: 400,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ContactRow(
                    label: "My Instagram account",
                    iconPath: "assets/images/instagram.svg",
                    onPressed: instagram,
                  ),
                  Divider(color: Colors.black38,),
                  ContactRow(
                    label: "My Linkedin account",
                    iconPath: "assets/images/linkedin.svg",
                    onPressed: linkedin,
                  ),
                  Divider(color: Colors.black38,),
                  ContactRow(
                    label: "Call me",
                    iconPath: "assets/images/call.svg",
                    onPressed: call,
                  ),
                  Divider(color: Colors.black38,),
                  ContactRow(
                    label: "Text me",
                    iconPath: "assets/images/sms.svg",
                    onPressed: sms,
                  ),
                  Divider(color: Colors.black38,),
                  ContactRow(
                    label: "Mail me",
                    iconPath: "assets/images/mail.svg",
                    onPressed: mail,
                  ),
                  Divider(color: Colors.black38,),
                  ContactRow(
                    label: "My Github account",
                    iconPath: "assets/images/github.svg",
                    onPressed: github,
                  ),
                  Divider(color: Colors.black38,),
                  ContactRow(
                    label: "This project's github page",
                    iconPath: "assets/images/github.svg",
                    onPressed: thisproject,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ContactRow extends StatelessWidget {
  final String label;
  final String iconPath;
  final VoidCallback onPressed;

  const ContactRow({
    required this.label,
    required this.iconPath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(width: 25),
        Icon(Icons.arrow_forward, color: Colors.black),
        SizedBox(width: 25),
        InkWell(
          onTap: onPressed,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              iconPath,
              height: 35,
            ),
          ),
        ),
      ],
    );
  }
}
