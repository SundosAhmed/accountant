import 'package:accountant/screens/home/widget/appbar.dart';
import 'package:accountant/screens/home/homebloc.dart';
import 'package:accountant/screens/home/widget/details.dart';
import 'package:accountant/screens/home/widget/netbalance.dart';
import 'package:accountant/screens/home/widget/recordcash.dart';
import 'package:accountant/screens/home/widget/search.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  var bloc = Homebloc();

  Future<void> _showDurationDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              "Duration",
              style: TextStyle(color: Colors.black),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  const Divider(
                    height: 1,
                    color: Colors.black,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: bloc.alltime,
                        onChanged: (value) {
                          bloc.alltime = value ?? false;
                          setState(() {});
                        },
                      ),
                      const Text("AllTime")
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: bloc.today,
                        onChanged: (value) {
                          bloc.today = value ?? false;
                          setState(() {});
                        },
                      ),
                      const Text("Today")
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: bloc.yesterday,
                        onChanged: (value) {
                          bloc.yesterday = value!;
                          setState(() {});
                        },
                      ),
                      const Text("Yesterday")
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: bloc.thismonth,
                        onChanged: (value) {
                          setState(() {});
                          bloc.thismonth = value!;
                        },
                      ),
                      const Text("This Month")
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: bloc.lastmonth,
                        onChanged: (value) {
                          bloc.lastmonth = value!;
                          setState(() {});
                        },
                      ),
                      const Text("Last Month")
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: bloc.singleday,
                        onChanged: (value) {
                          bloc.singleday = value!;
                          setState(() {});
                        },
                      ),
                      const Text("Single Day")
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: bloc.daterange,
                        onChanged: (value) {
                          bloc.daterange = value!;
                          setState(() {});
                        },
                      ),
                      const Text("Date Range")
                    ],
                  ),
                  ElevatedButton(onPressed: () {}, child: const Text("Apply"))
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade300,
      appBar: appbar(context),
      body: Column(
        children: [
          Search(searchcontroller: bloc.sraechcontroller),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 40,
                  top: 8,
                ),
                child: InkWell(
                  onTap: (() {
                    _showDurationDialog(context);
                  }),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    width: 220,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: const [
                          Icon(Icons.calendar_today),
                          Text("Today (13 Mar 22)"),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          netbalance(context),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 12,
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: ((context, index) {
                  return Details(context);
                })),
          ),
          Expanded(child: Container()),
          Recordcash(context),
        ],
      ),
    );
  }
}
