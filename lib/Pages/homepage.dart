// ignore_for_file: prefer_const_constructors

import 'package:coffee_app/Pages/color.dart';
import 'package:coffee_app/size.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Icon(Icons.menu), Icon(Icons.person)],
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Text(
              "Find the best",
              style: TextStyle(fontSize: screenWidth * 0.06, color: blackColor),
            ),
            Text(
              "Coffee to your taste",
              style: TextStyle(fontSize: screenWidth * 0.06, color: blackColor),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Row(
              children: [
                Flexible(
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      // fillColor: blackColor,
                      // filled: true,
                      // focusColor: Colors.green,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color:Colors.red ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Colors.red),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Find your coffee"
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.05,
                ),

                Icon(Icons.menu),
              ],
            ),
            SizedBox(
               height: screenHeight*0.02,
            ),

            Row(
              children: [
                Flexible(
                  child: Text("Espresso",
                  style: TextStyle(fontSize: screenWidth * 0.05, color: blackColor),)
                  ),
                Flexible(
                  child: Text("Latte",
                  style: TextStyle(fontSize: screenWidth * 0.05, color: blackColor),)
                  ),
                Flexible(
                  child: Text("Espresso",
                  style: TextStyle(fontSize: screenWidth * 0.05, color: blackColor),)
                  ),
                Flexible(
                  child: Text("Espresso",
                  style: TextStyle(fontSize: screenWidth * 0.05, color: blackColor),)
                  )
              ],
            )


          ],


        ),
      ),
    ));
  }
}
