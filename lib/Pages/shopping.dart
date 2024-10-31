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

bool isChecked = false;

class _HomeState extends State<Shopping> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Cart",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      Container(
        width: screenWidth * 0.8,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: plateColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Checkbox(value: isChecked, onChanged: (value){
              setState(() {
                isChecked = value!;
              });
            },
            materialTapTargetSize:MaterialTapTargetSize.shrinkWrap,
                        splashRadius: 1,
                        visualDensity: VisualDensity.compact,
                        
            ),
            Container(
                height: screenWidth * 0.25,
                width: screenWidth * 0.25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: plateColor.withOpacity(0.1),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://static.toiimg.com/thumb/msid-112525506,width-1070,height-580,imgsize-1776962,resizemode-75,overlay-toi_sw,pt-32,y_pad-40/photo.jpg"),
                        fit: BoxFit.cover))),
            SizedBox(
              width: screenWidth * 0.05,
            ),
            Flexible(
              child: Column(
                children: [
                  Text("Expresso"),
                  // SizedBox(
                  //   height: screenHeight*0.02,
                  // ),
                  Text("with milk"),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Text("\$4.20")
                ],
              ),
            ),
            SizedBox(
              width: screenWidth * 0.02,
            ),
            Flexible(
              child: Column(
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                  SizedBox(
                    height: 3,
                  ),
                  Text("2"),
                  SizedBox(
                    height: 3,
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.remove))
                ],
              ),
            )
          ],
        ),
      )
    ]);
  }
}
