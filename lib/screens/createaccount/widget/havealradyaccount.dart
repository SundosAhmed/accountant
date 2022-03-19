import 'package:accountant/screens/loginScreen/login_Screen.dart';
import 'package:flutter/material.dart';

Widget havealreadyaccount(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        "Already have an account?",
        style: TextStyle(color: Colors.grey),
      ),
      TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Login_Screen()),
            );
          },
          child: const Text(
            "Login",
            style: TextStyle(
              color: Colors.grey,
            ),
          ))
    ],
  );
}
