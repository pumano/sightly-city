import 'package:flutter/material.dart';

import 'package:sightlycity/views/main.screen.dart';
import 'package:sightlycity/views/serviceinfo.screen.dart';
import 'package:sightlycity/views/splashscreen.widget.dart';
import 'package:sightlycity/views/transport.screen.dart';

class Routes {

  var routes = <String, WidgetBuilder>{
    "/": (BuildContext context) => MainScreen(),
    "/splash": (BuildContext context) => SplashScreen(),
    "/transport": (BuildContext context) => TransportScreen(),
    "/serviceinfo": (BuildContext context) => ServiceInfoScreen()
  };
}