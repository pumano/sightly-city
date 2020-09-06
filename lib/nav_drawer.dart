import 'package:flutter/material.dart';
import 'package:sightlycity/models/menu-item.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  static const List<MenuItem> links = [
    MenuItem(name: "О Видном Городе", link: '/'),
    MenuItem(name: "Новости", link: '/news'),
    MenuItem(name: "Информация и телефоны", link: '/information'),
    // MenuItem(name: "Управляющая компания", link: '/servicecompany'),
    MenuItem(name: "Расположение", link: '/transport'),
    MenuItem(name: "Кодекс", link: '/rules'),
    MenuItem(name: "Инфраструктура", link: '/infrastructure'),
    MenuItem(name: "Соц сети", link: '/socialnetworks'),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: SafeArea(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          /*
          ListTile(
            title: Text('Видный Город',
                style: TextStyle(
                    color: Color(0xFFAC956B),
                    fontFamily: 'PoiretOne',
                    fontSize: 40.0)),
            subtitle: Text("Светский пригород",
                style: Theme.of(context).textTheme.body1),
          ),
          */

          DrawerHeader(
            child: Center(
                child: Column(children: [
              Text('Видный Город',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'PoiretOne',
                      fontSize: 40.0)),
              Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Светский пригород",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "HelveticaNeueCyrThin",
                        fontSize: 20),
                  ))
            ])),
            decoration: BoxDecoration(
              color: Color(0xFF941C40),
            ),
          ),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: links.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(links[index].name,
                      style: Theme.of(context).textTheme.subtitle1),
                  onTap: () {
                    Navigator.popAndPushNamed(context, links[index].link);
                  },
                );
              }),
        ],
      ),
    ));
  }
}
