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
    'vg5.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Видный Город',
                style: Theme.of(context).textTheme.subhead)),
        body: SafeArea(
            child: Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    CarouselSlider(
                      height: 200.0,
                      items: imgList.map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                decoration:
                                    BoxDecoration(color: Colors.black87),
                                child: Image(
                                  image: AssetImage('assets/${i}'),
                                ));
                          },
                        );
                      }).toList(),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 10, bottom: 20),
                        child: Text("Светский пригород",
                            style: Theme.of(context).textTheme.title)),
                    Text(
                        "«Видный Город» расположен всего в 6 км от Москвы по Варшавскому шоссе, в зеленом уголке Подмосковья, богатом историческими усадебными традициями и природными достопримечательностями. До ближайшего метро - всего 10-15 минут на собственном или общественном транспорте.",
                        style: Theme.of(context).textTheme.body1)
                  ],
                ))),
        drawer: NavigationDrawer());
  }
}
