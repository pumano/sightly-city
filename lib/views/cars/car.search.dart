import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CarSearch extends StatefulWidget {
  @override
  _CarSearchState createState() => _CarSearchState();
}

class _CarSearchState extends State<CarSearch> {
  String searchString = '';

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: <
            Widget>[
      TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.search), hintText: 'Введите номер авто'),
        onChanged: (val) {
          setState(() {
            searchString = val;
          });
        },
      ),
      StreamBuilder<QuerySnapshot>(
        stream: (searchString != '' && searchString != null)
            ? FirebaseFirestore.instance
                .collection('vehicles')
                .where('searchKeywords', arrayContains: searchString)
                .snapshots()
            : FirebaseFirestore.instance.collection('vehicles').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          return (snapshot.connectionState == ConnectionState.waiting)
              ? Center(child: CircularProgressIndicator())
              : ListView(
                  children: snapshot.data.docs.map((DocumentSnapshot document) {
                    return ListTile(
                      title: Text(document.get('owner.phone')),
                      subtitle: Text(document.get('owner.phone').toString()),
                    );
                  }).toList(),
                );
        },
      )
    ]));
  }
}
