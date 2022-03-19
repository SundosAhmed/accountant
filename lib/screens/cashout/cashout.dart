import 'package:accountant/Sharedwidget/appbarcustom.dart';
import 'package:accountant/Sharedwidget/checkinout/checkinout.dart';
import 'package:flutter/material.dart';

class Cashoutscreen extends StatelessWidget {
  const Cashoutscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customappbar(context,
          title: "Add Cash Out Entry", Color: Colors.white),
      body: Column(
        children: [
          Ceckinout(
            items: const [
              'Food',
              'Health',
              'Petrol',
              'Transportation',
              "Bills",
              "Shopping",
              "Entertainment"
            ],
          )
        ],
      ),
    );
  }
}
