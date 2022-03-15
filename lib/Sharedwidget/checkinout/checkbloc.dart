import 'package:flutter/material.dart';

class Checkinoutbloc {
  String? selectedValue;
  bool cash = false;
  bool online = false;
  bool nopaymentmode = false;
  TimeOfDay? time = TimeOfDay.now();
  DateTime date = DateTime.now();
}
