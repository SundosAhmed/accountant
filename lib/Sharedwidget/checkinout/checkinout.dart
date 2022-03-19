import 'package:accountant/Sharedwidget/checkinout/checkbloc.dart';
import 'package:accountant/screens/image/image.dart';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Ceckinout extends StatefulWidget {
  List<String> items = [];

  Ceckinout({
    Key? key,
    required this.items,
  }) : super(key: key);
  @override
  State<Ceckinout> createState() => _CeckinoutState();
}

class _CeckinoutState extends State<Ceckinout> {
  @override
  var bloc = Checkinoutbloc();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 19, right: 16, left: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () async {
                  DateTime? newdate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now().add(Duration(seconds: 1)),
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2200));
                  if (newdate != null) {
                    setState(() {
                      bloc.date = newdate;
                    });
                  }
                },
                child: Row(
                  children: [
                    const Icon(Icons.calendar_today),
                    Text(
                        "${bloc.date.day.toString()}/${bloc.date.month.toString()}/${bloc.date.year}"),
                    const Icon(Icons.keyboard_arrow_down_rounded)
                  ],
                ),
              ),
              InkWell(
                onTap: () async {
                  TimeOfDay? newTime = await showTimePicker(
                      context: context, initialTime: TimeOfDay.now());
                  if (newTime != null) {
                    setState(() {
                      bloc.time = newTime;
                    });
                  }
                },
                child: Row(
                  children: [
                    const Icon(Icons.schedule_sharp),
                    Text(
                      "${bloc.time!.hour.toString()}:${bloc.time!.minute.toString()}",
                      style: const TextStyle(color: Colors.black, fontSize: 17),
                    ),
                    const Icon(Icons.keyboard_arrow_down_rounded)
                  ],
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                labelStyle: TextStyle(
                  fontSize: 20,
                  color: Color(0xff707273),
                ),
                hintText: "amount",
                hintStyle: TextStyle(
                  color: Color(0xffAEB1B3),
                ),
                border: OutlineInputBorder()),
          ),
        ),
        const Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                labelStyle: TextStyle(
                  fontSize: 20,
                  color: Color(0xff707273),
                ),
                hintText: "Remark (Item,Person Name, Quantity",
                hintStyle: TextStyle(
                  color: Color(0xffAEB1B3),
                ),
                border: OutlineInputBorder()),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CameraWidget()));
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 159),
            child: Container(
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade500),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: const [
                    Icon(Icons.camera_alt_outlined),
                    Text("Attach Image")
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 200, top: 16),
          child: DropdownButtonHideUnderline(
            child: DropdownButton2(
              dropdownDecoration: BoxDecoration(border: Border.all()),
              hint: Text(
                'Category',
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).hintColor,
                ),
              ),
              items: widget.items
                  .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                  .toList(),
              value: bloc.selectedValue,
              onChanged: (value) {
                setState(() {
                  bloc.selectedValue = value as String;
                });
              },
              buttonHeight: 40,
              buttonWidth: 140,
              itemHeight: 40,
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const Padding(
          padding: EdgeInsets.only(right: 250),
          child: Text("Payment Mode"),
        ),
        Row(
          children: [
            Checkbox(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              activeColor: Colors.teal,
              value: bloc.cash,
              onChanged: (value) {
                bloc.cash = value!;
                setState(() {});
              },
            ),
            const Text(
              "Cash",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            )
          ],
        ),
        Row(
          children: [
            Checkbox(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              activeColor: Colors.teal,
              value: bloc.online,
              onChanged: (value) {
                bloc.online = value!;
                setState(() {});
              },
            ),
            const Text(
              "Online",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            )
          ],
        ),
        Row(
          children: [
            Checkbox(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              activeColor: Colors.teal,
              focusColor: Colors.red,
              value: bloc.nopaymentmode,
              onChanged: (value) {
                bloc.nopaymentmode = value!;
                setState(() {});
              },
            ),
            const Text(
              "No Payment Mode",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 40,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.teal)),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Save")),
          ),
        )
      ],
    );
  }
}
