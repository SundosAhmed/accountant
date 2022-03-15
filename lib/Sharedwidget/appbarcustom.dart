import 'package:flutter/material.dart';

AppBar customappbar({
  String title = "",
  Color,
}) {
  return AppBar(
    backgroundColor: Colors.teal,
    title: Row(
      children: [
        Text(
          title,
          style: TextStyle(color: Color),
        ),
        Expanded(child: Container()),
        IconButton(onPressed: () {}, icon: Icon(Icons.brightness_low_outlined)),
      ],
    ),
  );
}
