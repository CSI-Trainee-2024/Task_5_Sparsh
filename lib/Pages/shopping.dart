// ignore_for_file: prefer_const_constructors

import 'package:coffee_app/constants/color.dart';
import 'package:coffee_app/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Shopping extends StatefulWidget {
  const Shopping({super.key});

  @override
  State<Shopping> createState() => _HomeState();
}

class _HomeState extends State<Shopping> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Cart",
            style: TextStyle(fontSize: 20),
          ),
          // Container(
            // color: Colors.green,
          // )
        ],
      ),

    );
  }
}
