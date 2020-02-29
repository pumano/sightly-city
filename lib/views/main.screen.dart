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
    // 'vg1.jpg',
    // 'vg2.jpg',
    'vg20.jpg',
    'vg12.jpg',
    'vg3.jpg',
    'vg4.jpg',
    'vg5.jpg',
    'vg6.jpg',
    'vg7.jpg',
    'vg8.jpg',
    // 'vg9.jpg',
    // 'vg10.jpg',
    'vg11.jpg',
    'vg13.jpg',
    'vg14.jpg',
    'vg15.jpg',
    'vg16.jpg',
    'vg17.jpg',
    // 'vg18.jpg',
    'vg19.jpg',
    'vg21.jpg',
    'vg22.jpg',
    'vg23.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Видный Город',
                style: Theme.of(context).textTheme.subtitle1)),
        body: SingleChildScrollView(
            child: Container(
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
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Text("СВЕТСКИЙ ПРИГОРОД",
                              style: Theme.of(context).textTheme.headline6)),
                      Text(
                          "Всего в 15 минутах от столицы можно жить как в красивейших пригородах Парижа или Санкт-Петербурга. Выходить из дома прекрасной классической архитектуры, любуясь целым ансамблем архитектурных шедевров.",
                          style: Theme.of(context).textTheme.bodyText1),
                      Container(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Text("ДОМА-КВАРТАЛЫ С БЕЗОПАСНЫМИ ДВОРАМИ",
                              style: Theme.of(context).textTheme.headline6)),
                      Text(
                          "Проезд машин в наши дворы физически невозможен. Паркуются только со стороны улицы или в подземных и наземных паркингах. Можно спокойно отпустить ребенка играть на детской площадке или погулять во дворе вечером.",
                          style: Theme.of(context).textTheme.bodyText1),
                      Container(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Text("АВТОРСКАЯ АРХИТЕКТУРА",
                              style: Theme.of(context).textTheme.headline6)),
                      Text(
                          "«Видный Город» расположен неподалеку от старинной усадьбы Суханово, так что классический облик фасадов и рисунок генплана, напоминающего регулярные усадебные парки, становятся продолжением истории этой местности. Каждый фасад здесь неповторим, отличается цветом, декоративными элементами, рисунком балконов и веранд. Так задается сложность и богатство архитектурного облика. Автор проекта — Максим Атаянц, один из лучших архитекторов, работающих в классике.",
                          style: Theme.of(context).textTheme.bodyText1)
                    ],
                  ))
            ]))),
        drawer: NavigationDrawer());
  }
}
