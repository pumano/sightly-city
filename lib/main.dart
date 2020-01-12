import 'package:flutter/material.dart';

import 'routes.dart';

void main() => runApp(MyApp());

// colors
// #941c40 // main bordo
// #6A1931 // bordo text // Helvetica Neue Cyr Thin
// #AB9677; // main sand
// #AC956B; // sand background and sand text too
// #f1e4cb // sub sand

// #393E6E; // navy link

// #5D5D5D // gray color text

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sightly City',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
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
          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(
              fontSize: 36.0,
              color: Color(0xFFAC956B),
              fontFamily: "PoiretOne"),
          subtitle:
              TextStyle(fontSize: 26.0, fontFamily: "HelveticaNeueCyrThin"),
          body1: TextStyle(
              fontFamily: "HelveticaNeueCyrThin",
              fontSize: 18.0,
              letterSpacing: 1.15,
              color: Color(0xFF5D5D5D)),
          body2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          subhead: TextStyle(fontFamily: "HelveticaNeueCyrThin", fontSize: 20),
        ),
      ),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          textTheme: TextTheme(
            headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            title: TextStyle(
                fontSize: 36.0,
                color: Color(0xFFAC956B),
                fontFamily: "PoiretOne"),
            subtitle: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                fontFamily: "HelveticaNeueCyrThin"),
            body1: TextStyle(
                letterSpacing: 1.15,
                fontFamily: "HelveticaNeueCyrThin",
                fontSize: 18.0),
            body2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
            subhead: TextStyle(fontFamily: "PoiretOne", fontSize: 20),
          )),
      routes: Routes().routes,
      initialRoute: '/splash',
    );
  }
}
