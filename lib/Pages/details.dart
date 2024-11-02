// ignore_for_file: prefer_const_constructors

import 'package:coffee_app/constants/color.dart';
import 'package:coffee_app/constants/size.dart';
import 'package:coffee_app/models/coffee_model.dart';
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
  String selectedSize =  "S";
  int quantity = 0;
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
                    // Text(widget.coffeeModel.coffeeDesc),
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
                                Container(
                                  alignment: Alignment.center,
                                  
                                  height: screenWidth * 0.12,
                                  width: screenWidth * 0.12,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(100),
                                      color: brownColor),
                                  child: Text(
                                    "S",
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.04,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  
                                   height: screenWidth * 0.12,
                                  width: screenWidth * 0.12,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(100),
                                      color: brownColor),
                                  child: Text(
                                    "M",
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.04,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                
                                   height: screenWidth * 0.12,
                                  width: screenWidth * 0.12,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(100),
                                      color: brownColor),
                                  child: Text(
                                    "L",
                                    textAlign: TextAlign.center,
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
                                Container(
                                    alignment: Alignment.center,
                                     height: screenWidth * 0.12,
                                  width: screenWidth * 0.12,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: brownColor),
                                    child: Icon((Icons.add))),
                                SizedBox(
                                  width: screenWidth * 0.03,
                                ),
                                Text(quantity.toString(), style: TextStyle(fontSize: 15)),
                                SizedBox(
                                  width: screenWidth * 0.03,
                                ),
                                Container(
                                    alignment: Alignment.center,
                                    height: screenWidth * 0.12,
                                  width: screenWidth * 0.12,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: brownColor),
                                    child: Icon((Icons.remove))),
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
