// ignore_for_file: prefer_const_constructors

import 'package:coffee_app/Pages/details.dart';
import 'package:coffee_app/constants/coffees.dart';
import 'package:coffee_app/constants/color.dart';
import 'package:coffee_app/constants/size.dart';
import 'package:coffee_app/shared/coffee_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> coffeeTypes = ["Espresso", "Latte", "Cappuccino", "Cafetiere"];
  int selectedCoffeeType = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Find the best \nCoffee to your taste",
              style: GoogleFonts.lato(
                  fontSize: 22, fontWeight: FontWeight.bold, color: whiteColor),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Row(
              children: [
                Flexible(
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Color(0xffdddddd),
                        ),
                        fillColor: fillColor,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        hintText: "Find your coffee",
                        hintStyle: TextStyle(color: Color(0xffdddddd))),
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: brownColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(5))),
                  child: Icon(Icons.menu),
                )
              ],
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            SizedBox(
                height: screenHeight * 0.05,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCoffeeType = index;
                            });
                          },
                          child: Column(children: [
                            Text(coffeeTypes[index],
                                style: TextStyle(
                                    color: selectedCoffeeType == index
                                        ? brownColor
                                        : whiteColor,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                            selectedCoffeeType == index
                                ? Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                        color: brownColor,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  )
                                : Container()
                          ]));
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: screenWidth * 0.06,
                      );
                    },
                    itemCount: coffeeTypes.length)),
            SizedBox(height: screenHeight * 0.02),
            SizedBox(
              height: screenHeight * 0.29,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    if (coffees[index].coffeeType ==
                        coffeeTypes[selectedCoffeeType]) {
                      return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Details(coffeeModel: coffees[index])));
                          },
                          child: CoffeeCard(coffeeModel: coffees[index]));
                    }
                    return Container();
                  },
                  separatorBuilder: (context, index) {
                    if (coffees[index].coffeeType ==
                        coffeeTypes[selectedCoffeeType]) {
                      return SizedBox(width: screenWidth * 0.08);
                    }
                    return Container();
                  },
                  itemCount: coffees.length),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Text(
              "Special for you",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Container(
              width: screenWidth * 0.8,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: brownColor,
              ),
              child: Row(
                children: [
                  Container(
                      height: screenWidth * 0.4,
                      width: screenWidth * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: plateColor.withOpacity(0.1),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://static.toiimg.com/thumb/msid-112525506,width-1070,height-580,imgsize-1776962,resizemode-75,overlay-toi_sw,pt-32,y_pad-40/photo.jpg"),
                              fit: BoxFit.cover))),
                  SizedBox(width: screenWidth * 0.05),
                  Flexible(
                      child: Text(
                          "Specially mixed and brewed which you must try!",
                          style: TextStyle(fontSize: 16)))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
