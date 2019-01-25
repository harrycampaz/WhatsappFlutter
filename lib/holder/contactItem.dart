import 'package:flutter/material.dart';
import 'package:flutter_app_whatpsapp/entity/contactModel.dart';
import 'package:flutter_app_whatpsapp/entity/chatModel.dart';
import 'package:flutter_app_whatpsapp/pages/chat_screen.dart';

class ContactItem extends StatelessWidget {
  final ContactModel _contact;
  ContactItem(this._contact);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(_contact.imageUri),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(_contact.name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              Text(
                _contact.from,
                style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          subtitle: Text(_contact.about),
          onTap: (){

            Navigator.push(context, MaterialPageRoute(builder:
                (context) => ChatScreen(ChatModel(name: _contact.name, imageUri: _contact.imageUri))));

          },
        )
      ],
    );
  }
}
