import 'package:flutter/material.dart';
import 'package:sightlycity/views/contacts/contact.dart';
import 'package:sightlycity/views/contacts/contactdetails.screen.dart';

class ContactsList extends StatelessWidget {
  final List<Contact> contacts;

  const ContactsList({Key key, @required this.contacts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: contacts.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                  decoration: BoxDecoration(
                      color: MediaQuery.of(context).platformBrightness ==
                              Brightness.dark
                          ? Color.fromRGBO(64, 75, 96, .9)
                          : Colors.white70,
                      borderRadius: BorderRadius.circular(4.0)),
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border(right: BorderSide(width: 1.0))),
                      child: (contacts[index].phones != null &&
                              contacts[index].phones.length > 0)
                          ? Icon(Icons.phone)
                          : contacts[index].website != null
                              ? Icon(Icons.insert_link)
                              : contacts[index].email != null
                                  ? Icon(Icons.email)
                                  : null,
                    ),
                    title: Text(
                      contacts[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Row(
                      children: <Widget>[
                        Text(
                          (contacts[index].phones != null &&
                                  contacts[index].phones.length > 0)
                              ? contacts[index].phones[0]
                              : '',
                        )
                      ],
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right, size: 30.0),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ContactDetailsScreen(
                                  contact: contacts[index])));
                    },
                  )),
            );
          }),
    );
  }
}
