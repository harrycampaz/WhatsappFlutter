import 'package:flutter/material.dart';
import 'package:flutter_app_whatpsapp/contactList.dart';
import 'package:flutter_app_whatpsapp/entity/contactModel.dart';
class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seleccionar Contacto"),
      ),
      body: ContactList(contactsData),
    );
  }
}
