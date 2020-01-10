import 'package:flutter/material.dart';
import 'package:sightlycity/models/contact.dart';

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
          child: Text(contact.name),
        )
     );
  }
}