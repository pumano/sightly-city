import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../nav_drawer.dart';

class InfrastructureScreen extends StatelessWidget {
  const InfrastructureScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Инфраструктура",
              style: Theme.of(context).textTheme.subtitle1),
        ),
        drawer: NavigationDrawer(),
        body: SingleChildScrollView(
            child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
              Container(
                  height: 226,
                  child: PhotoViewGallery.builder(
                    scrollPhysics: const BouncingScrollPhysics(),
                    builder: (BuildContext context, int index) {
                      return PhotoViewGalleryPageOptions(
                        imageProvider: AssetImage('assets/photos/vg-map.jpg'),
                        initialScale: PhotoViewComputedScale.covered,
                        minScale: PhotoViewComputedScale.contained * 1,
                        maxScale: PhotoViewComputedScale.contained * 1,
                      );
                    },
                    itemCount: 1,
                  )),
              // Image.asset('assets/photos/vg-map.jpg'),
              Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Text("ДВОРЫ БЕЗ МАШИН",
                              style: Theme.of(context).textTheme.headline6)),
                      Text(
                          "Проезд машин в наши дворы физически невозможен. Паркуются только со стороны улицы. Можно спокойно отпустить ребенка играть на детской площадке или погулять во дворе вечером.",
                          style: Theme.of(context).textTheme.bodyText1),
                      Container(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Text("СПОРТ",
                              style: Theme.of(context).textTheme.headline6)),
                      Text(
                          "Разнообразие досуга — отличительная черта светских пригородов. Именно поэтому особое внимание уделено инфраструктуре для занятия спортом и активностями на природе. В ЖК есть зона work out, можно кататься на велосипедах по лесу или съездить в Усадьбу «Суханово». По соседству планируется страительство ФОК с бассейном.",
                          style: Theme.of(context).textTheme.bodyText1),
                      Container(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Text("МАГАЗИНЫ",
                              style: Theme.of(context).textTheme.headline6)),
                      Text(
                          "Поблизости расположен ТЦ «Аструм Видное», в котором есть гипермаркет Карусель, магазин ВкусВилл, так же рядом есть магазины Лента и Мираторг.",
                          style: Theme.of(context).textTheme.bodyText1),
                      /*
                      Container(
                          padding: EdgeInsets.only(top: 20, bottom: 20),
                          child: Text("РЕСТОРАНЫ И КАФЕ",
                              style: Theme.of(context).textTheme.title)),
                      Text("В ТЦ «Аструм Видное» есть ресторан Just Meat",
                          style: Theme.of(context).textTheme.body1),
                          */

                      Container(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Text("ДЛЯ ДЕТЕЙ",
                              style: Theme.of(context).textTheme.headline6)),
                      Text(
                          "Через дорогу есть Лопатинская средняя общеобразовательная школа, есть детские сады: «Мечта», «Жар-птица». В данный момент на территории ЖК «Видный Город» планируется строительство общеобразовательной школы и детского сада на 120 мест.",
                          style: Theme.of(context).textTheme.bodyText1),
                      Container(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Text("ЗДОРОВЬЕ",
                              style: Theme.of(context).textTheme.headline6)),
                      Text(
                          "Ближайшая поликлитика находится в ЖК Бутово Парк. Недолеко есть аптека.",
                          style: Theme.of(context).textTheme.bodyText1),
                    ],
                  ))
            ]))));
  }
}
