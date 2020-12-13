import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:sightlycity/views/cars/car.search.dart';

import '../../widgets/nav_drawer/nav_drawer.dart';

class CarsScreen extends StatelessWidget {
  const CarsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              Text("Поиск авто", style: Theme.of(context).textTheme.subtitle1),
        ),
        drawer: NavigationDrawer(),
        body: SingleChildScrollView(
            child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[CarSearch()]))));
  }
}
