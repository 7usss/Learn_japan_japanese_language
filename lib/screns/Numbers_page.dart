import 'package:flutter/material.dart';
import 'package:untitled3/Componant/item_list.dart';
import 'package:untitled3/Models/Number.dart';
import '';
class Number_page extends StatelessWidget {
  const Number_page({Key? key}) : super(key: key);

  final List<Number> list_number = const [
    Number(image: "assets/images/numbers/number_one.png", en: "ichi", jp: "one",audio: "number_one_sound.mp3"),
    Number(image: "assets/images/numbers/number_two.png", en: "two", jp: "Ni",audio: "number_two_sound.mp3"),
    Number(image: "assets/images/numbers/number_three.png", en: "Three", jp: "San",audio:'number_three_sound.mp3' ),
    Number(image: "assets/images/numbers/number_four.png", en: "Four", jp: "Shi",audio: "number_four_sound.mp3"),
    Number(image: "assets/images/numbers/number_five.png", en: "Five", jp: "Go",audio: "number_five_sound.mp3"),
    Number(image: "assets/images/numbers/number_six.png", en: "Six", jp: "Roku",audio: "number_six_sound.mp3"),
    Number(image: "assets/images/numbers/number_seven.png", en: "Seven", jp: "Sebun",audio: "number_seven_sound.mp3"),
    Number(image: "assets/images/numbers/number_eight.png", en: "Eight", jp: "Hachi",audio: "number_eight_sound.mp3"),
    Number(image: "assets/images/numbers/number_nine.png", en: "Nine", jp: "Kyu",audio: "number_nine_sound.mp3"),
    Number(image: "assets/images/numbers/number_ten.png", en: "Ten", jp: "Ju",audio: "number_ten_sound.mp3"),

  ] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Toku'),backgroundColor: Colors.brown,),
      body: ListView.builder(
        itemCount: list_number.length,
        itemBuilder: (context,index){
          return item_list(numbers: list_number[index],color: Color(0xffb47336),AudioType: "assets/sounds/numbers/",);
        }

        ,
      ),
    );
  }
}

