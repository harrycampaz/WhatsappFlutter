import 'package:flutter/material.dart';
import 'package:flutter_app_whatpsapp/entity/statusModel.dart';
import 'package:flutter_app_whatpsapp/statusList.dart';
class StatusItem extends StatelessWidget {

  final StatusModel _status;
  StatusItem(this._status);

  @override
  Widget build(BuildContext context) {
    return Column( children: <Widget>[
       ListTile(
        leading:  CircleAvatar(
          backgroundImage: NetworkImage(_status.imageUri),
          radius: 23,
        ),
        title:  Text(_status.name,
          style:  TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18) ,),
        subtitle:  Text(_status.createAt),
      )
    ],);
  }
}
