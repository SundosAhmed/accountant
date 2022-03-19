import 'package:accountant/screens/setting.dart';

import 'package:flutter/material.dart';

AppBar customappbar(BuildContext context,
    {String title = "", Color, bool showicon = true}) {
  return AppBar(
    backgroundColor: Colors.teal,
    title: Row(
      children: [
        Text(
          title,
          style: TextStyle(color: Color),
        ),
        Expanded(child: Container()),
        showicon
            ? IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Setting()));
                },
                icon: const Icon(Icons.brightness_low_outlined))
            : Container(),
      ],
    ),
  );
}
