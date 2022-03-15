import 'package:accountant/Sharedwidget/appbarcustom.dart';
import 'package:accountant/Sharedwidget/checkinout/checkinout.dart';
import 'package:accountant/Sharedwidget/time.dart';
import 'package:flutter/material.dart';

class CahInScreen extends StatelessWidget {
  const CahInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customappbar(title: "Add Cash In Entry", Color: Colors.white),
      body: Column(
        children: [
          Ceckinout(
            items: const [
              'Salary',
              'Profit',
              'Cheque',
              'Daily income',
            ],
          )
        ],
      ),
    );
  }
}
