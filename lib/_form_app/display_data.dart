import 'package:flutter/material.dart';
import 'model.dart';

class ResultSchool extends StatelessWidget {
  School school;
  SchoolDet schooldet;
  SchoolCode schoolcode;
  SchoolUser schooluser;
  ResultSchool({this.school, this.schooldet, this.schooluser});
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: Text('School details')),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(school.schoolName, style: TextStyle(fontSize: 22)),
            Text(school.schoolPhone, style: TextStyle(fontSize: 22)),
            Text(school.schoolEmail, style: TextStyle(fontSize: 22)),
            Text(school.schoolWebsite, style: TextStyle(fontSize: 22)),
            Text(schooldet.addressOne, style: TextStyle(fontSize: 22)),
            Text(schooldet.addressTwo, style: TextStyle(fontSize: 22)),
            Text(schooldet.city, style: TextStyle(fontSize: 22)),
            Text(schooldet.pincode, style: TextStyle(fontSize: 22)),
            Text(schooldet.state, style: TextStyle(fontSize: 22)),
            Text(schooluser.username, style: TextStyle(fontSize: 22)),
            Text(schooluser.password, style: TextStyle(fontSize: 22)),
            Text(schoolcode.teacherCode, style: TextStyle(fontSize: 22)),
            Text(schoolcode.principalCode, style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    ));
  }
}
