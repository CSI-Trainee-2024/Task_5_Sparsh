import 'package:coffee_app/Pages/details.dart';
import 'package:coffee_app/constants/color.dart';
import 'package:coffee_app/Pages/landing.dart';
import 'package:coffee_app/constants/size.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(30),
          height: screenHeight,
          width: screenWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/coffee.jpg"),
              Column(
          
                children: [
                  Text(
                    "Stay Focused",
                    style: TextStyle(
                      fontSize: screenWidth * 0.08,
                      color: whiteColor,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Text(
                      "Get the cup filled of your choice to stay focused and awake. Diffrent type of coffee menu, hot lottee cappucino",
                      style: TextStyle(
                        fontSize: screenWidth * 0.05,
                        color: greyColor,
                      ))
                ],
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.pushAndRemoveUntil(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const HomePage(),
                  //     (Route<dynamic> route) => false
                  //   )
                  // );
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const Landing(),
                    ),
                    (Route<dynamic> route) => false,
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  width: screenWidth * 0.9,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: brownColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text("Dive in ",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
