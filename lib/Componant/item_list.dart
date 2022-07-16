import 'package:flutter/material.dart';
import 'package:untitled3/Models/Number.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:untitled3/Models/phrases.dart';



class item_list extends StatelessWidget {
  const item_list({Key? key,required this.numbers, required this.color, required this.AudioType}) : super(key: key);
  final Number numbers ;
  final Color color;
  final String AudioType;


  @override
  Widget build(BuildContext context) {
    return Container(
      color:  color,
      child: Row(
        children: [
          Container(
              height: 100,
              color: Colors.white70,
              child: Image.asset(numbers.image)),
          Container(
            height: 55,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Padding(
                padding: EdgeInsets.only(left: 16),

                child: Text(numbers.jp,style: TextStyle(fontSize: 22,color: Colors.white),),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(numbers.en,style: TextStyle(fontSize: 22,color: Colors.white)),
              )
            ],),
          ),
          Spacer(flex: 1),
          IconButton(icon: Icon(Icons.play_arrow,),
          onPressed: () {
           AudioCache player = AudioCache(prefix: AudioType);
           player.play(numbers.audio);
    },
          )
        ],
      ),
    );
  }
}
class phrases_list1 extends StatelessWidget {
  final Phrases phrases ;
  final Color color;
  final String AudioType1;
  const phrases_list1({Key? key, required this.phrases, required this.color, required this.AudioType1}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Container(
      color:  color,
      child: Row(
        children: [
          Container(
            height: 80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16,top: 16),

                  child: Text(phrases.jp1,style: TextStyle(fontSize: 16,color: Colors.white,),),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(phrases.en1,style: TextStyle(fontSize: 16,color: Colors.white)),
                )
              ],),
          ),
          Spacer(flex: 1),
          IconButton(icon: Icon(Icons.play_arrow,),
            onPressed: () {
              AudioCache player = AudioCache(prefix: AudioType1);
              player.play(phrases.audio1);
            },
          )
        ],
      ),
    );
  }
}

