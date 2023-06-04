import 'package:flutter/material.dart';
class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
        itemCount: 5,
          itemBuilder: (context,position){
          return _buildPageItem(position);

      }),
    );
  }
  Widget _buildPageItem(int index){
    return Container(
      height: 200,
        margin: EdgeInsets.only(left: 5,right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: index.isEven?Colors.amber :Colors.blueAccent,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            "assets/image/kuku.png"
          )
        )
      ),
    );
  }
}
