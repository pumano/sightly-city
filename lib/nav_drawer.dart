import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

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
          ListTile(
            title: Text('О Видном Городе',
                style: Theme.of(context).textTheme.subtitle1),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.popAndPushNamed(context, '/');
            },
          ),
          ListTile(
            title: Text('Новости', style: Theme.of(context).textTheme.subtitle1),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Информация и телефоны',
                style: Theme.of(context).textTheme.subtitle1),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.popAndPushNamed(context, '/information');
            },
          ),
          ListTile(
            title: Text('Управляющая компания',
                style: Theme.of(context).textTheme.subtitle1),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.popAndPushNamed(context, '/servicecompany');
            },
          ),
          ListTile(
            title: Text('Расположение',
                style: Theme.of(context).textTheme.subtitle1),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.popAndPushNamed(context, "/transport");
            },
          ),
          ListTile(
            title: Text('Кодекс', style: Theme.of(context).textTheme.subtitle1),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.popAndPushNamed(context, "/rules");
            },
          ),
          ListTile(
            title: Text('Инфраструктура',
                style: Theme.of(context).textTheme.subtitle1),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.popAndPushNamed(context, "/infrastructure");
            },
          ),
          ListTile(
            title: Text('Соц сети', style: Theme.of(context).textTheme.subtitle1),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.popAndPushNamed(context, "/socialnetworks");
            },
          ),
        ],
      ),
    ));
  }
}
