import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
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
    // 'vg9.jpg',
    'vg10.jpg',
    'vg11.jpg',
    'vg12.jpg',
    'vg13.jpg',
    'vg14.jpg',
    'vg15.jpg',
    'vg16.jpg',
    'vg17.jpg',
    // 'vg18.jpg',
    'vg19.jpg',
    'vg20.jpg',
    'vg21.jpg',
    'vg22.jpg',
    'vg23.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Видный Город',
                style: Theme.of(context).textTheme.subhead)),
        body: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
              Container(
                  height: 220,
                  child: PhotoViewGallery.builder(
                    scrollPhysics: const BouncingScrollPhysics(),
                    builder: (BuildContext context, int index) {
                      return PhotoViewGalleryPageOptions(
                        imageProvider:
                            AssetImage('assets/photos/${imgList[index]}'),
                        initialScale: PhotoViewComputedScale.covered,
                        minScale: PhotoViewComputedScale.contained * 1,
                        maxScale: PhotoViewComputedScale.contained * 1,
                      );
                    },
                    itemCount: imgList.length,
                  )),
              Container(
                  padding: const EdgeInsets.only(
                      bottom: 20.0, left: 20.0, right: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          padding: const EdgeInsets.only(top: 10, bottom: 20),
                          child: Text("СВЕТСКИЙ ПРИГОРОД",
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
