import 'package:coffee_app/constants/color.dart';
import 'package:coffee_app/constants/size.dart';
import 'package:coffee_app/models/coffee_model.dart';
import 'package:flutter/material.dart';

class CoffeeCard extends StatelessWidget {
  const CoffeeCard({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Container(
        width: screenWidth * 0.3 + 20,
        padding: EdgeInsets.all(10),
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
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage("assets/coffee.jpg"))),
              // child: Image.asset("assets/coffee.jpg")
            ),
            SizedBox(height: screenHeight * 0.01),
            Text("Expresso"),
            Text("With Oat Milk"),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$4.20"),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: brownColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(5))),
                  child: Icon(Icons.add),
                )
              ],
            )
          ],
        ));
  }
}
