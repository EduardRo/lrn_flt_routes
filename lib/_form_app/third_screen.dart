import 'package:flutter/material.dart';
import 'package:instaskool/model.dart';
import 'package:validators/validators.dart' as validator;
import 'package:instaskool/home_screens/homescreen_student.dart';
import 'package:instaskool/home_screens/homescreen_school.dart';
import 'package:instaskool/screens/school_signup_three.dart';
import 'package:instaskool/screens/school_code.dart';

class SchoolRegThree extends StatefulWidget {
  School school;
  SchoolRegThree({this.school, SchoolDet schooldet});

  @override
  _SchoolRegThreeState createState() => _SchoolRegThreeState();
}

class _SchoolRegThreeState extends State<SchoolRegThree> {
  final _formKey = GlobalKey<FormState>();
  SchoolUser schooluser = SchoolUser();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: new Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 100),
                child: MyTextFormField(
                  hintText: 'Username',
                  isPassword: true,
                  validator: (String value) {
                    if (value.length < 5) {
                      return 'Username should be at least 5 characters long';
                    }

                    _formKey.currentState.save();

                    return null;
                  },
                  onSaved: (String value) {
                    schooluser.username = value;
                  },
                ),
              ),
              MyTextFormField(
                hintText: 'New Password',
                isPassword: true,
                validator: (String value) {
                  if (value.length < 7) {
                    return 'Password should be at least 7 characters long';
                  } else if (schooluser.password != null) {
                    print(value);

                    print(schooluser.password);
                  }

                  return null;
                },
                onSaved: (String value) {
                  schooluser.password = value;
                },
              ),
              RaisedButton(
                color: Colors.blueAccent,
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ResultSchool(schooluser: this.schooluser)));
                  }
                },
                child: Text(
                  'Done',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyTextFormField extends StatelessWidget {
  final String hintText;
  final Function validator;
  final Function onSaved;
  final bool isPassword;
  final bool isEmail;
  MyTextFormField({
    this.hintText,
    this.validator,
    this.onSaved,
    this.isPassword = false,
    this.isEmail = false,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.all(15.0),
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.grey[200],
        ),
        obscureText: isPassword ? true : false,
        validator: validator,
        onSaved: onSaved,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      ),
    );
  }
}
