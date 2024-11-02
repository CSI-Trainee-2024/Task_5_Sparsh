// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:coffee_app/constants/color.dart';
import 'package:coffee_app/constants/size.dart';
import 'package:coffee_app/models/cart_model.dart';
import 'package:flutter/material.dart';

class ShoppingCard extends StatelessWidget {
  const ShoppingCard(
      {super.key, required this.cartModel, required this.onValueChanged , required this.increment, required this.decrement});
  final CartModel cartModel;
  final onValueChanged;
  final increment;
  final decrement;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: screenWidth * 0.8,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: plateColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Checkbox(
              value: cartModel.isChecked,
              onChanged: onValueChanged,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
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
                        image: NetworkImage(cartModel.imageUrl),
                        fit: BoxFit.cover))),
            SizedBox(
              width: screenWidth * 0.05,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(cartModel.coffeeType),
                  
                  Text(cartModel.coffeeMake),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Text("\$ ${(cartModel.price * cartModel.quantity).toStringAsFixed(2)}")
                ],
              ),
            ),
            SizedBox(
              width: screenWidth * 0.02,
            ),
            Flexible(
              child: Column(
                children: [
                  IconButton(onPressed: increment, icon: const Icon(Icons.add)),
                  const SizedBox(height: 3),
                  Text(cartModel.quantity.toString()),
                  const SizedBox(height: 3),
                  IconButton(onPressed: decrement, icon: const Icon(Icons.remove))
                ],
              ),
            )
          ],
        ),
      )
    ]);
  }
}
