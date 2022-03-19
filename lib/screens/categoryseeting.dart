import 'package:accountant/Sharedwidget/appbarcustom.dart';
import 'package:flutter/material.dart';

class CategorySetting extends StatelessWidget {
  Future<void> _addnewcategory(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              "Add New Category",
              style: TextStyle(color: Colors.black),
            ),
            content: SingleChildScrollView(
                child: ListBody(
              children: [
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "Category Name", border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(onPressed: () {}, child: const Text("Save"))
              ],
            )),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customappbar(context, title: "Category Setting", showicon: false),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                _addnewcategory(context);
              },
              child: Row(
                children: [
                  const Text(
                    "Add New Category",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(child: Container()),
                  const Icon(
                    Icons.add,
                    color: Colors.black,
                  )
                ],
              )),
        ],
      ),
    );
  }
}
