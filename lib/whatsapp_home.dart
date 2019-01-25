import 'package:flutter/material.dart';
import 'package:flutter_app_whatpsapp/pages/camara.dart';
import 'package:flutter_app_whatpsapp/pages/chats.dart';
import 'package:flutter_app_whatpsapp/pages/status.dart';
import 'package:flutter_app_whatpsapp/pages/calls.dart';
import 'package:flutter_app_whatpsapp/pages/contacts.dart';
class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => new _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this,  initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
      title: new Text("FlutterChat"),
      actions: <Widget>[
        new Icon(Icons.search, size: 32,),
        new Icon(Icons.more_vert, size: 32,)
      ],
      bottom: new TabBar(tabs: <Widget>[
        new Tab(icon: new Icon(Icons.camera_alt),),
        new Tab(text: "CHATS"),
        new Tab(
          text: "STATUS",
        ),
        new Tab(
          text: "CALLS",
        )
      ], controller: _tabController),
    ),body: new TabBarView(children: <Widget>[
      new Camara(),
      new Chats(),
      new Status(),
      new Calls()

    ],controller: _tabController,),
      floatingActionButton: FloatingActionButton(onPressed: (){

        Navigator.push(context, MaterialPageRoute(
            builder: (BuildContext) => Contacts()));
      },
      backgroundColor: Theme.of(context).accentColor,
      child: Icon(Icons.message, color: Colors.white,),),
    );
  }
}
