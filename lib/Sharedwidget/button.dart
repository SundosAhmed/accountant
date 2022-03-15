import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  List<Color> backgroundcolor;
  String textname;
  Color textcolor;
  VoidCallback ontappress;
  CustomButton(
      {required this.backgroundcolor,
      required this.textname,
      required this.textcolor,
      required this.ontappress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40, top: 16, bottom: 16),
      child: InkWell(
        onTap: ontappress,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: backgroundcolor),
            borderRadius: (BorderRadius.circular(20)),
          ),
          height: 48,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  textname,
                  style: TextStyle(color: textcolor, fontSize: 13),
                ),
              ),
              Icon(
                (Icons.arrow_forward_ios),
                size: 10,
                color: textcolor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
