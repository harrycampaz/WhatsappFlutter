import 'package:flutter/material.dart';
import 'package:flutter_app_whatpsapp/entity/chatModel.dart';
import 'package:flutter_app_whatpsapp/pages/chat_screen.dart';

class ChatItem extends StatelessWidget {
  final ChatModel _chat;
  ChatItem(this._chat);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
         ListTile(
          leading:  CircleAvatar(
            backgroundImage: NetworkImage(_chat.imageUri),
            radius: 25,
          ),
          title:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
               Text(
                _chat.name,
                style:  TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
               Text(
                _chat.updateAt,
                style:  TextStyle(fontSize: 15.0, color: Colors.grey),
              ),
            ],
          ),
          //contentPadding: EdgeInsets.only(left: 14.0),
          subtitle:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
               Container(
                child:  Text(
                  _chat.content,
                  style:  TextStyle(fontSize: 16),
                ),
              ),
               Divider(height: 10)
            ],
          ),
          onTap: () {
            Navigator.push(
                context,
                 MaterialPageRoute(
                    builder: (context) => ChatScreen(_chat)));
          },
        ),

      ],
    );
  }
}
