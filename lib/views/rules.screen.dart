import 'package:flutter/material.dart';

class RulesScreen extends StatelessWidget {
  const RulesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Кодекс", style: Theme.of(context).textTheme.subhead),
        ),
        body: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text("Тишина",
                      style: Theme.of(context).textTheme.title)),
              Text(
                  "Соблюдение закона о тишине",
                  style: Theme.of(context).textTheme.body1),
            ]))));
  }
}