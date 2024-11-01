import 'package:coffee_app/constants/color.dart';
import 'package:coffee_app/constants/size.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  List<String> chocolatesType = [
    "White Chocolate",
    "Milk chocolate",
    "Dark chocolate"
  ];
  int selectedChocolateType = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
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
                                setState(() {});
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
                        height: screenHeight * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: plateColor.withOpacity(0.5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Espresso",
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  height: screenHeight * 0.01,
                                ),
                                Text(
                                  "with chocolate",
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Text("Coffee"),
                                    SizedBox(
                                      width: screenWidth * 0.02,
                                    ),
                                    Text("Chocolate")
                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight * 0.01,
                                ),
                                Text("Medium Roasted")
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  height: screenHeight * 0.5,
                  width: screenWidth,
                  // color: Colors.red,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Description",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vel tincidunt et ullamcorper eu, vivamus semper commodo............Read More"),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Text(
                        "Choice of Chocolates",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
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
                                    border: Border.all(
                                      color: brownColor
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                    // color: Colors.red,
                                    color: selectedChocolateType == index?
                                    brownColor: Colors.transparent
                                  ),
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
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
