import 'package:flutter/material.dart';
import 'package:sightlycity/nav_drawer.dart';

class RulesScreen extends StatelessWidget {
  const RulesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Кодекс", style: Theme.of(context).textTheme.subtitle1),
        ),
        drawer: NavigationDrawer(),
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Text("Тишина",
                              style: Theme.of(context).textTheme.headline6)),
                      Text("Соблюдение закона о тишине",
                          style: Theme.of(context).textTheme.bodyText1),
                    ]))));
  }
}
