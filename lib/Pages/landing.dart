import 'package:coffee_app/Pages/favourites.dart';
import 'package:coffee_app/Pages/home.dart';
import 'package:coffee_app/Pages/notifications.dart';
import 'package:coffee_app/Pages/profile.dart';
import 'package:coffee_app/Pages/shopping.dart';
import 'package:coffee_app/constants/color.dart';
import 'package:coffee_app/constants/size.dart';
import 'package:flutter/material.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {

  int selectedIndex = 0;


  _updateIndex(int i){
    setState(() {
      selectedIndex = i;
      print(selectedIndex);
    });
  }

  _getBody(){
    switch (selectedIndex){
      case 0: return Home();
      case 1: return Favourite();
      case 2: return Shopping();
      case 3: return Notifications();
      case 4: return Profile();

    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding:  EdgeInsets.only(left: screenWidth * 0.1),
            child: const Icon(Icons.menu),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: screenWidth * 0.1),
              child: const Icon(Icons.person),
            )
          ]),
      body: _getBody(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: bottomnavigationColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: _updateIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: selectedIndex == 0 ? whiteColor :  brownColor,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: brownColor,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shop,
              color: brownColor,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: brownColor,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: brownColor,
            ),
            label: "",
          ),
        ],
        // onTap: (int index) {
        //   this.onTapHandler(index);
        // },
      ),
    ));
  }
}
