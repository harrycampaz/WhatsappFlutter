import 'package:flutter/material.dart';
import 'package:flutter_app_whatpsapp/entity/statusModel.dart';
import 'package:flutter_app_whatpsapp/statusList.dart';
class Status extends StatelessWidget {

  _buildData(){
    return <StatusModel>[
      StatusModel(name: "Oscar Perez", createAt: "1:00 AM", imageUri: "https://pbs.twimg.com/profile_images/893906531552571392/lg9V2Sf9_bigger.jpg"),
      StatusModel(name: "Lio Messi", createAt: "3:20 PM",  imageUri: "https://pbs.twimg.com/profile_images/955663505088278529/AwLYtMfh_bigger.jpg"),
      StatusModel(name: "Luis Cardenas", createAt: "9:20 aM", imageUri: "https://pbs.twimg.com/profile_images/1062155885911425024/EMf90GZI_bigger.jpg"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new StatusList(_buildData()),
    );
  }
}