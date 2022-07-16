import 'package:flutter/material.dart';
import 'package:untitled3/Componant/Category.dart';
import 'package:untitled3/screns/Colors_page.dart';
import 'package:untitled3/screns/Numbers_page.dart';
import 'package:untitled3/screns/family_page.dart';
import 'package:untitled3/screns/phrases_page.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text('Toku'),
        backgroundColor: Colors.brown,),
      body: Column(children: [
        Category(text1: 'Numbers',color: Color(0xffb47336),click1: (){
          Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){return Number_page();} ));
        },),
        Category(text1: 'Colors',color: Colors.green,click1:(){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){return colors_page();}));}) ,
        Category(text1: 'Family members',color: Colors.lightGreen,click1: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){return Family_page();}));}),
        Category(text1: 'Phrases',color: Colors.amber,click1: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){return phrases_page();}));}),
      ],),
    );
  }
}
