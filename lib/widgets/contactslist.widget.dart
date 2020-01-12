import 'package:flutter/material.dart';
import 'package:sightlycity/views/contactdetails.screen.dart';

class ContactsList extends StatelessWidget {
  final List contacts;

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
                      color: Color.fromRGBO(64, 75, 96, .9),
                      borderRadius: BorderRadius.circular(4.0)),
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border(
                              right: BorderSide(
                                  width: 1.0, color: Colors.white24))),
                      child: Icon(Icons.phone),
                    ),
                    title: Text(
                      contacts[index].name,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Row(
                      children: <Widget>[
                        Text(
                            contacts[index].phone != null
                                ? contacts[index].phone
                                : '',
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right,
                        color: Colors.white, size: 30.0),
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
