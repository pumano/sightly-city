import 'package:flutter/material.dart';
import 'package:sightlycity/helpers/url_launcher.dart';
import 'package:sightlycity/models/contact.dart';
import 'package:sightlycity/widgets/map.widget.dart';

class ContactDetailsScreen extends StatelessWidget {
  final Contact contact;
  ContactDetailsScreen({Key key, this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Детали контакта",
                style: Theme.of(context).textTheme.subtitle1)),
        body: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                      child: Text(contact.name,
                          style: Theme.of(context).textTheme.headline6)),
                  contact.phone != null
                      ? ListTile(
                          leading: Icon(
                            Icons.phone,
                            color: Colors.greenAccent,
                          ),
                          title: Text(contact.phone),
                          onTap: () async {
                            UrlLauncher().launchURL("tel:" + contact.phone);
                          },
                        )
                      : Container(),
                  contact.description != null
                      ? ListTile(
                          leading: Icon(
                            Icons.help,
                          ),
                          title: Text(contact.description),
                          onTap: () async {},
                        )
                      : Container(),
                  contact.email != null
                      ? ListTile(
                          leading: Icon(
                            Icons.email,
                            color: Colors.yellow[300],
                          ),
                          title: Text(
                            contact.email,
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue),
                          ),
                          onTap: () async {
                            UrlLauncher().launchURL("mailto:" + contact.email);
                          },
                        )
                      : Container(),
                  contact.website != null
                      ? ListTile(
                          leading: Icon(Icons.insert_link),
                          title: Text(
                            contact.website,
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue),
                          ),
                          onTap: () async {
                            UrlLauncher().launchURL(contact.website);
                          },
                        )
                      : Container(),
                  contact.address != null
                      ? ListTile(
                          leading: Icon(Icons.my_location),
                          title: Text(
                            contact.address,
                          ),
                          onTap: () async {
                            // UrlLauncher().launchURL(contact.address);
                          },
                        )
                      : Container(),
                  contact.coords != null
                      ? MapWidget(coords: contact.coords)
                      : Container()
                ])));
  }
}
