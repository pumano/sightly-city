import 'package:flutter/material.dart';
import 'package:sightlycity/helpers/url_launcher.dart';
import 'package:sightlycity/nav_drawer.dart';

class SocialNetworksScreen extends StatelessWidget {
  const SocialNetworksScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Социальные сети",
              style: Theme.of(context).textTheme.subtitle1),
        ),
        drawer: NavigationDrawer(),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('assets/vgonline.jpg'),
                backgroundColor: Colors.transparent,
              ),
              title: Text("https://vk.com/vgonline"),
              subtitle: Text("ЖК Видный город. Ребята с нашего двора"),
              onTap: () async {
                UrlLauncher().launchURL("https://vk.com/vgonline");
              },
            ),
            ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage('assets/logo.png'),
                  backgroundColor: Colors.transparent,
                ),
                title: Text("https://vk.com/moms_of_vg"),
                subtitle: Text("Мамы ЖК «Видный город»"),
                onTap: () async {
                  UrlLauncher().launchURL("https://vk.com/moms_of_vg");
                }),
            ListTile(
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('assets/vgonline.jpg'),
                backgroundColor: Colors.transparent,
              ),
              title: Text("https://www.instagram.com/vidniygorodonline"),
              subtitle: Text("ЖК Видный город. Ребята с нашего двора"),
              onTap: () async {
                UrlLauncher()
                    .launchURL("https://www.instagram.com/vidniygorodonline");
              },
            )
          ],
        ));
  }
}
