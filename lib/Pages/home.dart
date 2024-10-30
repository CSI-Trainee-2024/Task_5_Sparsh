// ignore_for_file: prefer_const_constructors

import 'package:coffee_app/Pages/shopping.dart';
import 'package:coffee_app/constants/color.dart';
import 'package:coffee_app/constants/size.dart';
import 'package:coffee_app/models/coffee_model.dart';
import 'package:coffee_app/shared/coffee_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CoffeeModel> coffees = [
    CoffeeModel(
        image: "assets/coffee.jpg",
        coffeeType: "Expresso",
        coffeeDesc: "With milk",
        price: "\$4.20"),
    CoffeeModel(
        image: "assets/coffee.jpg",
        coffeeType: "Expresso",
        coffeeDesc: "With milk",
        price: "\$4.20"),
    CoffeeModel(
        image: "assets/coffee.jpg",
        coffeeType: "Expresso",
        coffeeDesc: "With milk",
        price: "\$4.20")
  ];

  List<String> coffeeTypes = ["Espresso", "Latte", "Cappuccino", "Cafetiere"];
  int selectedCoffeeType = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
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
                      // focusColor: Colors.green,
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
          Container(
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
                      child: Container(
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
                                      borderRadius: BorderRadius.circular(100)),
                                )
                              : Container()
                        ]),
                      ));
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: screenWidth * 0.06,
                  );
                },
                itemCount: coffeeTypes.length),
          ),
          Container(
            height: screenHeight * 0.29,
            child: ListView.separated(
                // shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CoffeeCard();
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: screenWidth * 0.08,
                  );
                },
                itemCount: 10),
          )
        ],
      ),
    );
  }
}
