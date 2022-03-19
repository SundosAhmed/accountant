import 'package:accountant/Sharedwidget/appbarcustom.dart';
import 'package:accountant/screens/Paymentmodesetting.dart';
import 'package:accountant/screens/categoryseeting.dart';
import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customappbar(context,
          title: "Setting", Color: Colors.white, showicon: false),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CategorySetting()));
              },
              child: Row(
                children: [
                  const Text(
                    "Category Setting ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(child: Container()),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  )
                ],
              )),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Paymentmodesetting()));
              },
              child: Row(
                children: [
                  const Text(
                    "Payment Mode Setting",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(child: Container()),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  )
                ],
              ))
        ],
      ),
    );
  }
}
