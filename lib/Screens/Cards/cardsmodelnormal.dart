// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:adaptive_speech/Screens/Cards/model.dart';

class CardsModelNormal extends StatelessWidget {
  final model data;

  CardsModelNormal(this.data);

  @override
  Widget build(BuildContext context) {
    final FlutterTts flutterTts = FlutterTts();

    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Text(
                    "Sign Language Communication",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
                color: Color.fromRGBO(113, 48, 148, 1),
                borderRadius: BorderRadius.only(
                    bottomLeft: const Radius.circular(40.0),
                    bottomRight: const Radius.circular(40.0))),
          ),
        ),
        backgroundColor: const Color.fromRGBO(36, 36, 62, 1),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: data.cardsname.length,
          itemBuilder: (BuildContext context, int index) {
            return new GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: FlipCard(
                  front: Container(
                    child: Card(
                      color: Color.fromRGBO(113, 48, 148, 1),
                      elevation: 4,
                      shadowColor: Color.fromRGBO(190, 18, 277, 1),
                      margin: EdgeInsets.all(10),
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 0)),
                      child: Center(
                        child: InkWell(
                            onTap: () async {
                              await flutterTts.speak(data.cardsname[index]);
                            },
                            child: Text(
                              data.cardsname[index],
                              style: TextStyle(
                                  fontSize: 35,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                      ),
                    ),
                  ),
                  back: Card(
                    color: Color.fromRGBO(113, 48, 148, 1),
                    elevation: 4,
                    shadowColor: Color.fromRGBO(190, 18, 277, 2),
                    margin: EdgeInsets.all(10),
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 0,
                      ),
                    ),
                    child: Image.network(
                      data.src[index],
                      // scale: 5,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
