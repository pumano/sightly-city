import 'package:flutter/material.dart';
import 'package:sightlycity/models/contacts.dart';
import 'package:sightlycity/nav_drawer.dart';
import 'package:sightlycity/widgets/contactslist.widget.dart';

class ServiceInfoScreen extends StatefulWidget {
  const ServiceInfoScreen({Key key}) : super(key: key);

  @override
  _ServiceInfoScreenState createState() => _ServiceInfoScreenState();
}

class _ServiceInfoScreenState extends State<ServiceInfoScreen> {
  List contacts;
  List managementCompanyContacts;
  List emergenceContacts;
  List elevatorContacts;
  List garbageCollectionContacts;
  List russianPostContacts;
  List webServicesContacts;

  @override
  void initState() {
    contacts = getTechnicianContacts();
    managementCompanyContacts = getManagementCompanyContacts();
    emergenceContacts = getEmergenceContacts();
    elevatorContacts = getElevatorContacts();
    garbageCollectionContacts = getGarbageCollectionContacts();
    russianPostContacts = getRussianPostContacts();
    webServicesContacts = getWebServicesContacts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Информация УК",
                style: Theme.of(context).textTheme.subhead)),
        drawer: NavigationDrawer(),
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
                          child: Text("Аварийная служба")),
                      ContactsList(contacts: emergenceContacts),
                      Container(
                          padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
                          child: Text("Службы одного окна")),
                      ContactsList(contacts: webServicesContacts),
                      Container(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Text("Лифтовая диспетчерская")),
                      ContactsList(contacts: elevatorContacts),
                      Container(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Text("Телефоны техников")),
                      ContactsList(contacts: contacts),
                      Container(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Text("Телефоны УК")),
                      ContactsList(contacts: managementCompanyContacts),
                      Container(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Text("Вывоз мусора")),
                      ContactsList(contacts: garbageCollectionContacts),
                      Container(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Text("Почтовое отделение")),
                      ContactsList(contacts: russianPostContacts),
                    ]))));
  }
}
