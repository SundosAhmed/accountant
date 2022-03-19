import 'package:accountant/Sharedwidget/appbarcustom.dart';
import 'package:flutter/material.dart';

class Paymentmodesetting extends StatelessWidget {
  Future<void> _addnewppayment(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              "Add New Payment Mode",
              style: TextStyle(color: Colors.black),
            ),
            content: SingleChildScrollView(
                child: ListBody(
              children: [
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "Payment Mode ", border: OutlineInputBorder()),
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
      appBar:
          customappbar(context, title: "Payment Mode Setting", showicon: false),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                _addnewppayment(context);
              },
              child: Row(
                children: [
                  const Text(
                    "Add New Payment Mode",
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
