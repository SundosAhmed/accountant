import 'package:flutter/material.dart';

AppBar appbar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.teal,
    title: Row(
      children: [
        const Text("New Book"),
        const SizedBox(
          width: 100,
        ),
        const Icon(Icons.person),
        const SizedBox(
          width: 10,
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.picture_as_pdf)),
        Expanded(child: Container()),
        const Icon(Icons.more_vert_outlined)
      ],
    ),
  );
}
