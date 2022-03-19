import 'package:accountant/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class Createaccountbloc {
  TextEditingController namecontroller = TextEditingController();

  TextEditingController mobilecontroller = TextEditingController();

  TextEditingController createpasswordcontroller = TextEditingController();
  bool login = false;

  String erorrmsg = "";

  String name = "";

  validationRegister(BuildContext context) {
    if (namecontroller.text.isEmpty) {
      erorrmsg = "name field is empty";
    } else if (mobilecontroller.text.isEmpty) {
      erorrmsg = "mobile is empty";
    } else if (createpasswordcontroller.text.isEmpty) {
      erorrmsg = "you must create password";
    } else if (namecontroller.text != "anas") {
      erorrmsg = "name is not correct";
    } else {
      erorrmsg = "";
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Home_Screen()));
    }
  }
}
