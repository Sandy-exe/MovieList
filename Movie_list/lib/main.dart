import 'package:flutter/material.dart';
import 'package:movielist/home.dart';

void main() {
  runApp(const MaterialApp(
    title: "Movie List",
    home: homeScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
