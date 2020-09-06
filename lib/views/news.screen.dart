import 'package:flutter/material.dart';
import 'package:sightlycity/widgets/newslist.widget.dart';

import '../nav_drawer.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Новости", style: Theme.of(context).textTheme.subtitle1),
        ),
        drawer: NavigationDrawer(),
        body: NewsList());
  }
}
