import 'package:flutter/material.dart';

// colors
// #941c40 // main bordo
// #6A1931 // bordo text // Helvetica Neue Cyr Thin
// #AB9677; // main sand
// #AC956B; // sand background and sand text too
// #f1e4cb // sub sand

// #393E6E; // navy link

// #5D5D5D // gray color text

ThemeData getBrightTheme() {
  return ThemeData(
    // This is the theme of your application.
    //
    // Try running your application with "flutter run". You'll see the
    // application has a blue toolbar. Then, without quitting the app, try
    // changing the primarySwatch below to Colors.green and then invoke
    // "hot reload" (press "r" in the console where you ran "flutter run",
    // or simply save your changes to "hot reload" in a Flutter IDE).
    // Notice that the counter didn't reset back to zero; the application
    // is not restarted.
    primaryColor: Color(0xFFAB9677),
    primarySwatch: Colors.blue,
    primaryColorBrightness: Brightness.light,

    textTheme: TextTheme(
      headline5: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(
          fontSize: 25.0, color: Color(0xFFAC956B), fontFamily: "PoiretOne"),
      subtitle2: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          fontFamily: "HelveticaNeueCyrThin"),
      bodyText1: TextStyle(
          fontFamily: "HelveticaNeueCyrThin",
          fontSize: 18.0,
          letterSpacing: 1.15,
          color: Color(0xFF5D5D5D)),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      subtitle1: TextStyle(fontFamily: "HelveticaNeueCyrThin", fontSize: 20),
    ),
  );
}

ThemeData getDarkTheme() {
  return ThemeData(
      brightness: Brightness.dark,
      textTheme: TextTheme(
        headline5: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        headline6: TextStyle(
            fontSize: 25.0, color: Color(0xFFAC956B), fontFamily: "PoiretOne"),
        subtitle2: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            fontFamily: "HelveticaNeueCyrThin"),
        bodyText1: TextStyle(
            letterSpacing: 1.15,
            fontFamily: "HelveticaNeueCyrThin",
            fontSize: 18.0),
        bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        subtitle1: TextStyle(fontFamily: "PoiretOne", fontSize: 20),
      ));
}
