import 'package:accountant/screens/cashin/cashin_screen.dart';
import 'package:accountant/screens/cashout/cashout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Recordcash(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.white),
    height: 120,
    width: MediaQuery.of(context).size.width,
    child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: const [
                Text(
                  "Record",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "Income",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Text(
                  "Record",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "Expense",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                width: 160,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => CahInScreen())));
                    },
                    child: const Text(
                      "+ Cash In",
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                width: 160,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => Cashoutscreen())));
                    },
                    child: const Text(
                      "- Cash Out",
                      style: TextStyle(fontSize: 18),
                    )),
              )
            ],
          )
        ],
      ),
    ),
  );
}
