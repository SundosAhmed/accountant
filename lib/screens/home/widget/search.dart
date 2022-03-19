import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  TextEditingController searchcontroller = TextEditingController();
  Search({required this.searchcontroller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        style: const TextStyle(color: Colors.black, fontSize: 16),
        cursorColor: Colors.teal,
        controller: searchcontroller,
        decoration: const InputDecoration(
          icon: Icon(Icons.search),
          hintText: "Search by Remark",
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
