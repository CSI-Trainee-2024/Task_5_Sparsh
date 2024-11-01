import 'package:coffee_app/constants/color.dart';
import 'package:coffee_app/constants/size.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: plateColor,
          child: Column(
            children: [
              Container(
                height: screenHeight * 0.5,
                child: Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://img.freepik.com/premium-photo/cup-latte-art-is-shown-with-coffee-beans_1271802-14957.jpg?semt=ais_hybrid"),
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
                              setState(() {
                              });
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
                      width: screenWidth,
                      height: screenHeight * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                         color: Colors.green,
                      ),
                    
                      // alignment: Alignment.bottomLeft,
                     
                      child: Text("ferjfnerjgfne")),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
