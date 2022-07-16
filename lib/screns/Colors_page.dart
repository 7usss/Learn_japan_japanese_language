import 'package:flutter/material.dart';

import '../Componant/item_list.dart';
import '../Models/Number.dart';

class colors_page extends StatelessWidget {
  const colors_page({Key? key}) : super(key: key);
  final List<Number> list_colors = const [
    Number(image: "assets/images/colors/color_black.png", en: "black", jp: "Kuro",audio: "black.wav"),
    Number(image: "assets/images/colors/color_brown.png", en: "brown", jp: "Chairo",audio: "brown.wav"),
    Number(image: "assets/images/colors/color_dusty_yellow.png", en: "dusty yellow", jp: "Hokori ppoi kiiro",audio: "dusty yellow.wav"),
    Number(image: "assets/images/colors/color_gray.png", en: "gray", jp: "Aka",audio: "gray.wav"),
    Number(image: "assets/images/colors/color_green.png", en: "green", jp: "Shiroi",audio: "green.wav"),
    Number(image: "assets/images/colors/color_red.png", en: "red", jp: "Aka",audio: "red.wav"),
    Number(image: "assets/images/colors/color_white.png", en: "white", jp: "Onēsan",audio: "white.wav"),
    Number(image: "assets/images/colors/yellow.png", en: "yellow", jp: "Musuko",audio: "yellow.wav"),
  ] ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Toku'),backgroundColor: Colors.brown,),
      body: ListView.builder(
        itemCount: list_colors.length,
        itemBuilder: (context,index){
          return item_list(numbers: list_colors[index],color: Colors.green,AudioType: "assets/sounds/colors/")

          ;
        }
        ,
      ),

    );
  }
}
