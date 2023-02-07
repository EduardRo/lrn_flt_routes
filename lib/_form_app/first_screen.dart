import 'package:flutter/material.dart';
import 'model.dart';
import 'package:validators/validators.dart' as validator;

import 'first_screen.dart';
import 'second_screen.dart';
import 'third_screen.dart';

class SchoolReg extends StatefulWidget {
  @override
  _SchoolRegState createState() => _SchoolRegState();
}

class _SchoolRegState extends State<SchoolReg> {
  final _formKey = GlobalKey<FormState>();
  School school = School();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: new Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 130),
                alignment: Alignment.topCenter,
                child: MyTextFormField(
                  hintText: 'School name',
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Enter your school name';
                    }

                    return null;
                  },
                  onSaved: (String value) {
                    school.schoolName = value;
                  },
                ),
              ),
              MyTextFormField(
                hintText: 'Phone',
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Enter the phone number';
                  }

                  return null;
                },
                onSaved: (String value) {
                  school.schoolPhone = value;
                },
              ),
              MyTextFormField(
                hintText: 'Email',
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Enter the email address';
                  }

                  return null;
                },
                onSaved: (String value) {
                  school.schoolEmail = value;
                },
              ),
              MyTextFormField(
                hintText: 'School Website',
                isEmail: true,
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Enter the school's website";
                  }

                  return null;
                },
                onSaved: (String value) {
                  school.schoolWebsite = value;
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
                            builder: (context) => SchoolRegTwo()));
                  }
                },
                child: const Text(
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
