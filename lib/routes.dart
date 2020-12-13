import 'package:flutter/material.dart';

import 'package:sightlycity/views/main/main.screen.dart';
import 'package:sightlycity/views/news/news.screen.dart';
import 'package:sightlycity/views/rules/rules.screen.dart';
import 'package:sightlycity/views/contacts/information.screen.dart';
import 'package:sightlycity/views/social/socialnetworks.screen.dart';
import 'package:sightlycity/widgets/splashscreen.widget.dart';
import 'package:sightlycity/views/transport/transport.screen.dart';
import 'package:sightlycity/views/cars/cars.screen.dart';
import 'package:sightlycity/views/infrastructure/infrastructure.screen.dart';

class Routes {
  var routes = <String, WidgetBuilder>{
    '/': (BuildContext context) => MainScreen(),
    '/splash': (BuildContext context) => SplashScreen(),
    '/cars': (BuildContext context) => CarsScreen(),
    '/news': (BuildContext context) => NewsScreen(),
    '/transport': (BuildContext context) => TransportScreen(),
    '/information': (BuildContext context) => InformationScreen(),
    '/rules': (BuildContext context) => RulesScreen(),
    '/infrastructure': (BuildContext context) => InfrastructureScreen(),
    '/socialnetworks': (BuildContext context) => SocialNetworksScreen()
  };
}
