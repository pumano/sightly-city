import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
