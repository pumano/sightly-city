import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'main.screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => MainScreen()),
              (Route<dynamic> route) => false,
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.black12),
          ),
          Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: SvgPicture.asset('assets/logo_vid.svg',
                            semanticsLabel: 'Vidniy Gorod'),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text("Видный Город",
                              style: TextStyle(
                                fontFamily: 'PoiretOne',
                                fontSize: 40.0,
                              ))),
                    ],
                  ),
                ),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.start,
          )
        ],
      ),
    );
  }
}
