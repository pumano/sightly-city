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
                style: Theme.of(context).textTheme.subhead)),
        body: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                      child: Text(contact.name,
                          style: Theme.of(context).textTheme.title)),
                  contact.phone != null
                      ? ListTile(
                          leading: Icon(
                            Icons.phone,
                            color: Colors.greenAccent,
                          ),
                          title: Text(contact.phone),
                          subtitle: contact.description != null
                              ? Text(contact.description)
                              : null,
                          onTap: () async {
                            UrlLauncher().launchURL("tel:" + contact.phone);
                          },
                        )
                      : Text(""),
                  contact.email != null
                      ? ListTile(
                          leading: Icon(
                            Icons.email,
                            color: Colors.yellowAccent,
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
                      : Text(""),
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
                      : Text(""),
                  contact.coords != null
                      ? MapWidget(coords: contact.coords)
                      : Text("")
                ])));
  }
}
