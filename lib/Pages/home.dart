// ignore_for_file: prefer_const_constructors

import 'package:coffee_app/constants/color.dart';
import 'package:coffee_app/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Home"),);
  }
}
