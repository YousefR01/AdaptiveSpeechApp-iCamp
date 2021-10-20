// ignore_for_file: prefer_const_constructors


import 'package:adaptive_speech/Screens/sectionOne/firstSection.dart';
import 'package:adaptive_speech/OnBoarding/onBoard.dart';
import 'package:flutter/widgets.dart';
import 'package:adaptive_speech/Screens/getStarted.dart';
import 'getStarted.dart';


// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  OnBoardScreen.routeName: (context) => OnBoardScreen(),
  getStarted.routeName: (context) => getStarted(),
  SpeechScreen.routeName: (context) => SpeechScreen(),
  
 
};
