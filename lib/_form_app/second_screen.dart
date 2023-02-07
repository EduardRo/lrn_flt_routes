import 'package:flutter/material.dart';
import 'package:instaskool/model.dart';
import 'package:validators/validators.dart' as validator;
import 'package:instaskool/home_screens/homescreen_student.dart';
import 'package:instaskool/home_screens/homescreen_school.dart';
import 'package:instaskool/screens/school_signup_three.dart';

class SchoolRegTwo extends StatefulWidget {
  @override
  _SchoolRegTwoState createState() => _SchoolRegTwoState();
}

class _SchoolRegTwoState extends State<SchoolRegTwo> {
  final _formKey = GlobalKey<FormState>();
  SchoolDet schooldet = SchoolDet();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: new Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 130),
                alignment: Alignment.topCenter,
                child: MyTextFormField(
                  hintText: 'School address 1',
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Enter your school's address";
                    }

                    return null;
                  },
                  onSaved: (String value) {
                    schooldet.addressOne = value;
                  },
                ),
              ),
              MyTextFormField(
                hintText: 'School address 2',
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Enter the school's address";
                  }

                  return null;
                },
                onSaved: (String value) {
                  schooldet.addressTwo = value;
                },
              ),
              MyTextFormField(
                hintText: 'City',
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Enter the city';
                  }

                  return null;
                },
                onSaved: (String value) {
                  schooldet.city = value;
                },
              ),
              MyTextFormField(
                hintText: 'Pincode',
                isEmail: true,
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Enter the pincode";
                  }

                  return null;
                },
                onSaved: (String value) {
                  schooldet.pincode = value;
                },
              ),
              MyTextFormField(
                hintText: 'State',
                isEmail: true,
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Enter the state";
                  }

                  return null;
                },
                onSaved: (String value) {
                  schooldet.state = value;
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
                                SchoolRegThree(schooldet: this.schooldet)));
                  }
                },
                child: Text(
                  'Next',
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
