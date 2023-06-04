import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/big_texts.dart';
import '../widgets/small_text.dart';
import 'food_page.dart';

class MyDashboard extends StatefulWidget {
  const MyDashboard({Key? key}) : super(key: key);

  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Container(
              child: Container(
                margin: EdgeInsets.only(top: 45,bottom: 15),
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText(text: "Kenya",color: Colors.green,size: 30),
                        Row(
                          children: [
                            SmallText(text: "Nairobi", color: Colors.black54,),
                            Icon(Icons.arrow_drop_down_rounded)
                          ],
                        )
                      ],
                    ),
                    Center(
                      child: Container(
                        width: 45,
                        height: 45,
                        child: Icon(Icons.search,color: Colors.white,),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blue
                        ),
                      ),
                    )
                  ],
                ),
              )
          ),
          FoodPage()
        ],
      ),
    );
  }
}
