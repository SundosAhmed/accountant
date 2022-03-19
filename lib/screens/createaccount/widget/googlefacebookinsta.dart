import 'package:accountant/screens/loginScreen/login_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget loginwithotherapp(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: TextButton(
          onPressed: () {},
          child: const Text(
            "Google",
            style: TextStyle(color: Colors.red, fontSize: 12),
          ),
        ),
      ),
      Container(
        color: Colors.grey,
        height: 20,
        width: 1,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10, right: 30),
        child: TextButton(
            onPressed: () {},
            child: const Text(
              "Facebook",
              style: TextStyle(color: Colors.blue),
            )),
      ),
      Container(
        color: Colors.grey,
        height: 20,
        width: 1,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: TextButton(
            onPressed: () {},
            child: const Text(
              "Twitter",
              style: TextStyle(color: Colors.lightBlue),
            )),
      ),
      const SizedBox(
        height: 230,
      ),
    ],
  );
}
