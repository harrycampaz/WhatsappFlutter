import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  String name;
  AnimationController animationController;
  String message;
  ChatMessage({this.message, this.animationController, this.name});
  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: new CurvedAnimation(
          parent: animationController, curve: Curves.easeOut),
      child: new Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.only(right: 16.0),
                child: new CircleAvatar(
              child: new Text(name[0]),
            )),
            new Expanded(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                new Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  child: new Text(message),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
