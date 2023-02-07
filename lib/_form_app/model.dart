import 'package:flutter/material.dart';
import 'package:instaskool/screens/school_code.dart';

class Model {
  String fullname;
  String code;
  String standard;
  String section;
  String username;
  String password;
  Model(
      {this.fullname,
      this.code,
      this.standard,
      this.section,
      this.username,
      this.password});
}

class School {
  String schoolName;
  String schoolPhone;
  String schoolEmail;
  String schoolWebsite;
  School(
      {this.schoolName,
      this.schoolPhone,
      this.schoolEmail,
      this.schoolWebsite});
}

class SchoolDet {
  String addressOne;
  String addressTwo;
  String city;
  String pincode;
  String state;

  SchoolDet(
      {this.addressOne, this.addressTwo, this.city, this.pincode, this.state});
}

class SchoolUser {
  String username;
  String password;

  SchoolUser({this.username, this.password});
}

class SchoolCode {
  String principalCode;
  String teacherCode;
  String studentCode;

  SchoolCode({this.principalCode, this.teacherCode, this.studentCode});
}
