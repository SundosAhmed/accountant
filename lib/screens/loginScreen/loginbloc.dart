import 'package:accountant/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Signinbloc {
  TextEditingController usernsme = TextEditingController();
  TextEditingController password = TextEditingController();
  final storage = FlutterSecureStorage();
  String errormsg = "";
  bool rememberMyIdChecked = false;


  savingRemrmberMyid(String value) async {
    await storage.write(key: "rememberMyIdChecked", value: value);
  }

  Future<String> readRemrmberMyid() async {
    return await storage.read(key: "rememberMyIdChecked") ?? "";
  }

  // savefingerprint(bool value) async {
  //   await storage.write(key: "useFingerPrintChecked", value: value.toString());
  // }

  // Future<bool> readfigerprint() async {
  //   return await storage.read(key: "useFingerPrintChecked") == "true";
  // }

  validation(BuildContext context) {
    if (usernsme.text.isEmpty) {
      errormsg = "username is empty";
    } else if (password.text.isEmpty) {
      errormsg = "password is empty";
    } else {
      errormsg = "";
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Home_Screen()));
      ;
    }
  }
}
