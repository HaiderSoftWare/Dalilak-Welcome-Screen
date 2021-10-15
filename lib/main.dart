import 'package:dalilak/HomePage.dart';
//import 'dart:convert';
import 'package:flutter/material.dart';
//import 'package:firebase_database/firebase_database.dart';
//import 'package:http/http.dart' as http;
//import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
