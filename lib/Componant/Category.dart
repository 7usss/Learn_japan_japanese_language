import 'package:flutter/material.dart';
class Category extends StatelessWidget {
  String? text1;
  Color? color;
  VoidCallback? click1;

  Category({this.text1,this.color,this.click1});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: click1,
      child: Container(

        color: color,
        height: 60,
        width: double.infinity,
        child: Center(child: Text(text1!,
          style: TextStyle(
              color:Colors.white ,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        )
        ),
      ),
    );
  }
}
