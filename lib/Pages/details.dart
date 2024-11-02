// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:coffee_app/constants/color.dart';
import 'package:coffee_app/constants/shopping_cart.dart';
import 'package:coffee_app/constants/size.dart';
import 'package:coffee_app/models/cart_model.dart';
import 'package:coffee_app/models/coffee_model.dart';
import 'package:coffee_app/shared/shopping_card.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key, required this.coffeeModel});

  final CoffeeModel coffeeModel;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  List<String> chocolatesType = [
    "White Chocolate",
    "Milk chocolate",
    "Dark chocolate"
  ];
  String selectedSize = "S";
  int quantity = 1;
  int selectedChocolateType = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: plateColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * 0.5,
                child: Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        image: DecorationImage(
                          image: NetworkImage(widget.coffeeModel.imageUrl),
                          fit: BoxFit.cover,
                        )),
                  ),
                  AppBar(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    leading: Padding(
                        padding: EdgeInsets.only(left: screenWidth * 0.1),
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back))),
                    actions: [
                      Padding(
                        padding: EdgeInsets.only(right: screenWidth * 0.1),
                        child: const Icon(Icons.favorite),
                      )
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    height: screenHeight * 0.15,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        width: screenWidth,
                        // height: screenHeight * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: plateColor.withOpacity(0.5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.coffeeModel.coffeeType,
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  height: screenHeight * 0.01,
                                ),
                                Text(
                                  widget.coffeeModel.coffeeMake,
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(widget.coffeeModel.coffeName),
                                SizedBox(
                                  height: screenHeight * 0.01,
                                ),
                                Text(widget.coffeeModel.rosted)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Description",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Text(widget.coffeeModel.coffeeDesc),
                    SizedBox(height: screenHeight * 0.02),
                    Text(
                      "Choice of Chocolates",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Container(
                      height: screenHeight * 0.05,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedChocolateType = index;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: brownColor),
                                    borderRadius: BorderRadius.circular(10),
                                    color: selectedChocolateType == index
                                        ? brownColor
                                        : Colors.transparent),
                                child: Text(
                                  chocolatesType[index],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              width: screenWidth * 0.06,
                            );
                          },
                          itemCount: chocolatesType.length),
                    ),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Size",
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(height: screenHeight * 0.02),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedSize = "S";
                                    });
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: screenWidth * 0.12,
                                    width: screenWidth * 0.12,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: brownColor),
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: selectedSize == "S"
                                            ? brownColor
                                            : Colors.transparent),
                                    child: Text(
                                      "S",
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.04,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedSize = "M";
                                    });
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: screenWidth * 0.12,
                                    width: screenWidth * 0.12,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        border: Border.all(color: brownColor),
                                        color: selectedSize == "M"
                                            ? brownColor
                                            : Colors.transparent),
                                    child: Text(
                                      "M",
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.04,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedSize = "L";
                                    });
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: screenWidth * 0.12,
                                    width: screenWidth * 0.12,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: brownColor),
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: selectedSize == "L"
                                            ? brownColor
                                            : Colors.transparent),
                                    child: Text(
                                      "L",
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        Column(
                          children: [
                            Text(
                              "Quantity",
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: screenHeight * 0.02,
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      quantity++;
                                    });
                                  },
                                  child: Container(
                                      alignment: Alignment.center,
                                      height: screenWidth * 0.12,
                                      width: screenWidth * 0.12,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: brownColor),
                                      child: Icon((Icons.remove))),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.03,
                                ),
                                Text(quantity.toString(),
                                    style: TextStyle(fontSize: 15)),
                                SizedBox(
                                  width: screenWidth * 0.03,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      quantity--;
                                    });
                                  },
                                  child: Container(
                                      alignment: Alignment.center,
                                      height: screenWidth * 0.12,
                                      width: screenWidth * 0.12,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: brownColor),
                                      child: Icon((Icons.add))),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Price",
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(height: screenHeight * 0.02),
                            Text(
                                "\$ ${(widget.coffeeModel.price * quantity).toStringAsFixed(2)}",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold))
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            cart.add(CartModel(
                                imageUrl: widget.coffeeModel.imageUrl,
                                coffeeType: widget.coffeeModel.coffeeType,
                                coffeeMake: widget.coffeeModel.coffeeMake,
                                price: widget.coffeeModel.price,
                                size: selectedSize,
                                quantity: quantity));
                                Navigator.pop(context);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: brownColor),
                            child: Text("Add to Cart"),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
