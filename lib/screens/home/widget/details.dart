import 'package:flutter/material.dart';

Widget Details(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text("image"),
                Expanded(child: Container()),
                IconButton(onPressed: () {}, icon: const Icon(Icons.close))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8, left: 8, top: 16),
            child: Row(
              children: [
                const Text("comment"),
                Expanded(child: Container()),
                const Text("500"),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(right: 8, left: 8, top: 16, bottom: 16),
            child: Row(
              children: [
                const Text("cash"),
                const SizedBox(
                  width: 30,
                ),
                const Text("food"),
                Expanded(child: Container()),
                const Text("Balance"),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
