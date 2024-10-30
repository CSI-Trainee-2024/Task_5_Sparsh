// ignore_for_file: prefer_const_constructors

import 'package:coffee_app/constants/color.dart';
import 'package:coffee_app/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _HomeState();
}

class _HomeState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Notifications"),);
  }
}