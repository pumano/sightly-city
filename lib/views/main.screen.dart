import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sightlycity/nav_drawer.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<String> imgList = [
    'vg1.jpg',
    'vg2.jpg',
    'vg3.jpg',
    'vg4.jpg',
    'vg5.jpg',
    'vg6.jpg',
    'vg7.jpg',
    'vg8.jpg',
    'vg9.jpg',
    'vg10.jpg',
    'vg11.jpg',
    'vg12.jpg',
    'vg13.jpg',
    'vg14.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Видный Город',
                style: Theme.of(context).textTheme.subhead)),
        body: Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: <
                    Widget>[
          CarouselSlider(
            height: 200.0,
            enlargeCenterPage: true,
            items: imgList.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: MediaQuery.of(context).platformBrightness ==
                                  Brightness.dark
                              ? Colors.transparent
                              : Colors.transparent),
                      child: Image(
                        image: AssetImage('assets/photos/${i}'),
                      ));
                },
              );
            }).toList(),
          ),
          Container(
              padding: EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(top: 10, bottom: 20),
                      child: Text("Светский пригород",
                          style: Theme.of(context).textTheme.title)),
                  Text(
                      "«Видный Город» расположен всего в 6 км от Москвы по Варшавскому шоссе, в зеленом уголке Подмосковья, богатом историческими усадебными традициями и природными достопримечательностями. До ближайшего метро - всего 10-15 минут на собственном или общественном транспорте.",
                      style: Theme.of(context).textTheme.body1)
                ],
              ))
        ])),
        drawer: NavigationDrawer());
  }
}
