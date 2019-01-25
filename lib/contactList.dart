import 'package:flutter/material.dart';
import 'package:flutter_app_whatpsapp/holder/contactItem.dart';
import 'package:flutter_app_whatpsapp/entity/contactModel.dart';

class ContactList extends StatelessWidget {
  final List<ContactModel> _contacts;
  ContactList(this._contacts);
  
  List<ContactItem> _buildContacts(){
    return _contacts
        .map((contact) => ContactItem(contact)).toList();
  }
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _buildContacts(),
    );
  }
}
