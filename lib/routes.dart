import 'package:flutter/material.dart';

import 'package:sightlycity/views/main.screen.dart';
import 'package:sightlycity/views/splashscreen.widget.dart';

class Routes {

  var routes = <String, WidgetBuilder>{
    "/": (BuildContext context) => MainScreen(),
    "/splash": (BuildContext context) => SplashScreen()
  };
}