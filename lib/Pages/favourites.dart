// ignore_for_file: prefer_const_constructors

import 'package:coffee_app/constants/color.dart';
import 'package:coffee_app/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Favourite"),);
  }
}