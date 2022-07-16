import 'package:flutter/material.dart';
import 'package:untitled3/Componant/item_list.dart';

import '../Models/Number.dart';

class Family_page extends StatelessWidget {
  const Family_page({Key? key}) : super(key: key);
  final List<Number> list_family = const [
    Number(image: "assets/images/family_members/family_daughter.png", en: "daughter", jp: "Musume",audio: "daughter.wav"),
    Number(image: "assets/images/family_members/family_father.png", en: "father", jp: "Otōsan",audio: "father.wav"),
    Number(image: "assets/images/family_members/family_grandfather.png", en: "grandfather", jp: "Ojīsan",audio: "grand father.wav"),
    Number(image: "assets/images/family_members/family_grandmother.png", en: "grandmother", jp: "Sobo",audio: "grand mother.wav"),
    Number(image: "assets/images/family_members/family_mother.png", en: "mother", jp: "Hahaoya",audio: "mother.wav"),
    Number(image: "assets/images/family_members/family_older_brother.png", en: "older brother", jp: "Nīsan",audio: "older bother.wav"),
    Number(image: "assets/images/family_members/family_older_sister.png", en: "older sister", jp: "Onēsan",audio: "older sister.wav"),
    Number(image: "assets/images/family_members/family_son.png", en: "son", jp: "Musuko",audio: "son.wav"),
    Number(image: "assets/images/family_members/family_younger_brother.png", en: "younger brother", jp: "Otōto",audio: "younger brohter.wav"),
    Number(image: "assets/images/family_members/family_younger_sister.png", en: "younger sister", jp: "Imōto",audio: 'younger sister.wav'),

  ] ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Toku'),backgroundColor: Colors.brown,),
      body: ListView.builder(
        itemCount: list_family.length,
        itemBuilder: (context,index){
          return item_list(numbers: list_family[index],color: Colors.lightGreen,AudioType: "assets/sounds/family_members/",)

          ;

        }

        ,
      ),
    );





  }
}
