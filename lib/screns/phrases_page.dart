import 'package:flutter/material.dart';
import 'package:untitled3/Models/phrases.dart';

import '../Componant/item_list.dart';

class phrases_page extends StatelessWidget {
  const phrases_page({Key? key}) : super(key: key);
  final List<Phrases> list_phrases = const [
    Phrases( en1: "are you coming", jp1: "Kimasu ka",audio1: "are_you_coming.wav"),
    Phrases( en1: "dont forget to subscribe", jp1: "Kōdoku suru koto o wasurenaide kudasai",audio1: "dont_forget_to_subscribe.wav"),
    Phrases( en1: "how are you feeling", jp1: "Go kibun wa ikagadesu ka",audio1:'how_are_you_feeling.wav' ),
    Phrases( en1: "i love anime", jp1: "Watashi wa anime ga daisukidesu",audio1: "i_love_anime.wav"),
    Phrases( en1: "programming is easy", jp1: "Puroguramingu wa kantandesu",audio1: "programming_is_easy.wav"),
    Phrases( en1: "what is your name", jp1: "Namae wa nandesu ka",audio1: "what_is_your_name.wav"),
    Phrases( en1: "where are you going", jp1: "Doko ni iku no",audio1: "where_are_you_going.wav"),
    Phrases( en1: "yes im coming", jp1: "Hai, kimasu",audio1: "yes_im_coming.wav"),


  ] ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Toku'),backgroundColor: Colors.brown,),
      body: ListView.builder(
        itemCount: list_phrases.length,
        itemBuilder: (context,index){
          return phrases_list1(phrases: list_phrases[index],color: Colors.amber,AudioType1: "assets/sounds/phrases/", )

          ;

        }

        ,
      ),
    );
  }
}
