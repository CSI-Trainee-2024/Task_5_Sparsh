import 'package:coffee_app/constants/color.dart';
import 'package:coffee_app/constants/size.dart';
import 'package:coffee_app/models/coffee_model.dart';
import 'package:flutter/material.dart';

class CoffeeCard extends StatelessWidget {
  const CoffeeCard({super.key,  required this.coffeeModel});

  final CoffeeModel coffeeModel;
  

  @override
  Widget build(BuildContext context) {
    return Container(
        width: screenWidth * 0.3 + 20,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: plateColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: screenWidth * 0.3,
              width: screenWidth * 0.3,
              decoration: BoxDecoration(
                  color: brownColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(coffeeModel.image),fit: BoxFit.cover)),
              // child: Image.asset("assets/coffee.jpg")
            ),
            SizedBox(height: screenHeight * 0.01),
            Text(coffeeModel.coffeeType),
            Text(coffeeModel.coffeeDesc),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(coffeeModel.price),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: brownColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(5))),
                  child: const Icon(Icons.add),
                )
              ],
            )
          ],
        ));
  }
}
