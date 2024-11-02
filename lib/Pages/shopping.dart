// ignore_for_file: prefer_const_constructors

import 'package:coffee_app/constants/shopping_cart.dart';
import 'package:coffee_app/shared/shopping_card.dart';
import 'package:flutter/material.dart';

class Shopping extends StatefulWidget {
  const Shopping({super.key});

  @override
  State<Shopping> createState() => _HomeState();
}

class _HomeState extends State<Shopping> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Cart",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ShoppingCard(
                cartModel: cart[index],
                onValueChanged: (value)
                
                
                 {
                  setState(() {
                    cart[index].isChecked = value;
                  });
                }, increment: (){
                  setState(() {
                    cart[index].quantity++;
                  });
                } , decrement: (){
                  setState(() {
                    cart[index].quantity==1?"":cart[index].quantity--;
                  });
                },
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 20);
            },
            itemCount: cart.length,
          )

          
        ],
      ),
    );
  }
}
