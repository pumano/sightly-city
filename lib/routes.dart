import 'package:flutter/material.dart';
import 'package:sightlycity/views/infrastructure.screen.dart';

import 'package:sightlycity/views/main.screen.dart';
import 'package:sightlycity/views/rules.screen.dart';
import 'package:sightlycity/views/information.screen.dart';
import 'package:sightlycity/views/servicecompany.screen.dart';
import 'package:sightlycity/views/socialnetworks.screen.dart';
import 'package:sightlycity/views/splashscreen.widget.dart';
import 'package:sightlycity/views/transport.screen.dart';

class Routes {
  var routes = <String, WidgetBuilder>{
    "/": (BuildContext context) => MainScreen(),
    "/splash": (BuildContext context) => SplashScreen(),
    "/transport": (BuildContext context) => TransportScreen(),
    "/information": (BuildContext context) => InformationScreen(),
    "/servicecompany": (BuildContext context) => ServiceCompanyScreen(),
    "/rules": (BuildContext context) => RulesScreen(),
    "/infrastructure": (BuildContext context) => InfrastructureScreen(),
    "/socialnetworks": (BuildContext context) => SocialNetworksScreen()
  };
}
