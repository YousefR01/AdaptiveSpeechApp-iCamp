// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:adaptive_speech/Screens/Cards/cardsmodeldeaf.dart';
import 'package:adaptive_speech/Screens/Cards/cardsmodelnormal.dart';
import 'package:adaptive_speech/Screens/Cards/mydata.dart';

class categoriesState extends StatelessWidget {
  String perType;
  categoriesState(this.perType);
  var data = mydate();
  List categList = [
    'Family',
    'Expressions',
    'Places',
    'Time',
    'Requests',
    'Food',
    'Feelings',
    'Clothes',
    'Colors',
    'Numbers',
  ];
  List catIcon = [
    Icons.family_restroom,
    Icons.emoji_people_outlined,
    Icons.place_rounded,
    Icons.timelapse_sharp,
    Icons.volunteer_activism_outlined,
    Icons.food_bank_rounded,
    Icons.emoji_emotions,
    Icons.checkroom_outlined,
    Icons.color_lens_outlined,
    Icons.format_list_numbered_rtl_rounded,
  ];
  List imagesData = [
    'assets/family.png',
    'assets/expre.jpg',
    'assets/places.png',
    'assets/time.jpg',
    'assets/request.png',
    'assets/food.png',
    'assets/feeling.jpg',
    'assets/clothes.png',
    'assets/colors.jpg',
    'assets/numbers.png',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Text(
                    "Categories",
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
                    bottomLeft: const Radius.circular(50.0),
                    bottomRight: const Radius.circular(50.0))),
          ),
        ),
        backgroundColor: const Color.fromRGBO(36, 36, 62, 1),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: categList.length,
              itemBuilder: (BuildContext ctx, index) {
                return InkWell(
                    onTap: () {
                      if (perType == 'Deaf') {
                        if (categList[index] == 'Family') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModel(data.familyDate)));
                        } else if (categList[index] == 'Expressions') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModel(data.expressionData)));
                        } else if (categList[index] == 'Places') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModel(data.placesDate)));
                        } else if (categList[index] == 'Time') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModel(data.timeDate)));
                        } else if (categList[index] == 'Requests') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModel(mydate().requestsDate)));
                        } else if (categList[index] == 'Food') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModel(mydate().foodData)));
                        } else if (categList[index] == 'Feelings') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModel(mydate().feelingDate)));
                        } else if (categList[index] == 'Clothes') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModel(mydate().clothesDate)));
                        } else if (categList[index] == 'Colors') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModel(mydate().colorsDate)));
                        } else if (categList[index] == 'Numbers') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModel(mydate().numbersData)));
                        }
                      } else if (perType == 'Normal') {
                        if (categList[index] == 'Family') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModelNormal(data.familyDate)));
                        } else if (categList[index] == 'Expressions') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModelNormal(data.expressionData)));
                        } else if (categList[index] == 'Places') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModelNormal(data.placesDate)));
                        } else if (categList[index] == 'Time') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModelNormal(data.timeDate)));
                        } else if (categList[index] == 'Requests') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModelNormal(mydate().requestsDate)));
                        } else if (categList[index] == 'Food') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModelNormal(mydate().foodData)));
                        } else if (categList[index] == 'Feelings') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModelNormal(mydate().feelingDate)));
                        } else if (categList[index] == 'Clothes') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModelNormal(mydate().clothesDate)));
                        } else if (categList[index] == 'Colors') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModelNormal(mydate().colorsDate)));
                        } else if (categList[index] == 'Numbers') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModelNormal(mydate().numbersData)));
                        }
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Icon(
                              catIcon[index],
                              size: 52,
                              color: Colors.white,
                            ),
                            Text(
                              categList[index],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [
                              //0.1,
                              0.9,
                              0.1,
                            ],
                            colors: [
                              //Color(0xFFBE12E3),
                              // Color(0xFF713094),
                              Color(0xFF713094),
                              Color(0xFFBE12E3),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(15)),
                    ));
              }),
        ),
      ),
    );
  }
}
