import 'package:flutter/material.dart';
import 'package:sightlycity/views/contacts/contacts.dart';
import 'package:sightlycity/widgets/nav_drawer/nav_drawer.dart';
import 'package:sightlycity/views/contacts/contactslist.widget.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({Key key}) : super(key: key);

  @override
  _InformationScreenState createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  List contacts;
  List managementCompanyContacts;
  List emergenceContacts;
  List elevatorContacts;
  List garbageCollectionContacts;
  List multifunctionalContacts;
  List medicalContacts;
  List policeContacts;
  List russianPostContacts;
  List webServicesContacts;

  @override
  void initState() {
    contacts = getTechnicianContacts();
    managementCompanyContacts = getManagementCompanyContacts();
    emergenceContacts = getEmergenceContacts();
    elevatorContacts = getElevatorContacts();
    garbageCollectionContacts = getGarbageCollectionContacts();
    multifunctionalContacts = getMultifunctionalContacts();
    medicalContacts = getMedicalContacts();
    policeContacts = getPoliceContacts();
    russianPostContacts = getRussianPostContacts();
    webServicesContacts = getWebServicesContacts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Информация и телефоны",
                style: Theme.of(context).textTheme.subtitle1)),
        drawer: NavigationDrawer(),
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 20.0),
                          child: Text("Аварийная служба")),
                      ContactsList(contacts: emergenceContacts),
                      Container(
                          padding:
                              const EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Text("Телефоны техников")),
                      ContactsList(contacts: contacts),
                      Container(
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 20.0),
                          child: Text("Службы одного окна")),
                      ContactsList(contacts: webServicesContacts),
                      Container(
                          padding:
                              const EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Text("Телефоны УК")),
                      ContactsList(contacts: managementCompanyContacts),
                      Container(
                          padding:
                              const EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Text("Лифтовая диспетчерская")),
                      ContactsList(contacts: elevatorContacts),
                      Container(
                          padding:
                              const EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Text("МФЦ")),
                      ContactsList(contacts: multifunctionalContacts),
                      Container(
                          padding:
                              const EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Text("Медицина")),
                      ContactsList(contacts: medicalContacts),
                      Container(
                          padding:
                              const EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Text("Полиция")),
                      ContactsList(contacts: policeContacts),
                      Container(
                          padding:
                              const EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Text("Почтовое отделение")),
                      ContactsList(contacts: russianPostContacts),
                      Container(
                          padding:
                              const EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Text("Вывоз мусора")),
                      ContactsList(contacts: garbageCollectionContacts),
                    ]))));
  }
}
