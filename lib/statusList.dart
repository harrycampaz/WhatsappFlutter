import 'package:flutter/material.dart';
import 'package:flutter_app_whatpsapp/entity/statusModel.dart';
import 'package:flutter_app_whatpsapp/holder/statusItem.dart';

class StatusList extends StatelessWidget {
  final List<StatusModel> _status;
  StatusList(this._status);

  StatusModel perfil = new StatusModel(
      name: "Harry campaz",
      createAt: "10:20 PM",
      imageUri:
          "https://pbs.twimg.com/profile_images/763031383170244608/PLlQYtMa_bigger.jpg");

  List<StatusItem> _buildStatusList() {
    return _status.map((status) => new StatusItem(status)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new ListView(
      children: <Widget>[
        new ListTile(
          leading: new CircleAvatar(
            backgroundImage: NetworkImage(perfil.imageUri),
            maxRadius: 30,
          ),
          title: new Text(
            perfil.name,
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          subtitle: new Text('Hoy ${perfil.createAt}'),
        ),
        new Padding(
          child: new Container(
            child: new Text("Amigos",
                style: new TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor)),
          ),
          padding: new EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
        ),
        new ListTile(
          leading: new CircleAvatar(
            backgroundImage: NetworkImage(_status[0].imageUri),
            maxRadius: 30,
          ),
          title: new Text(
            _status[0].name,
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          subtitle: new Text('Hoy ${_status[0].createAt}'),
        ),
        new ListTile(
          leading: new CircleAvatar(
            backgroundImage: NetworkImage(_status[1].imageUri),
            maxRadius: 30,
          ),
          title: new Text(
            _status[1].name,
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          subtitle: new Text('Hoy ${_status[1].createAt}'),
        ),
        new ListTile(
          leading: new CircleAvatar(
            backgroundImage: NetworkImage(_status[2].imageUri),
            maxRadius: 30,
          ),
          title: new Text(
            _status[2].name,
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          subtitle: new Text('Hoy ${_status[2].createAt}'),
        ),
      ],
    ));
  }
}
