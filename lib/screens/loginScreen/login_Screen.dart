import 'package:accountant/Sharedwidget/button.dart';
import 'package:accountant/screens/loginScreen/loginbloc.dart';
import 'package:flutter/material.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  @override
  var bloc = Signinbloc();

  @override
  void initState() {
    bloc.readRemrmberMyid().then((value) {
      bloc.rememberMyIdChecked = value != "" ? true : false;
      bloc.usernsme.text = value;
      setState(() {});
    });

    super.initState();
  }

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  "assets/image/dashbord.png",
                ),
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 16, right: 16),
                child: Container(
                  height: 510,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 50,
                          ),
                          const Text(
                            "Sign in",
                            style: TextStyle(
                                color: Color(0xff777879), fontSize: 24),
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Image.asset(
                                "assets/image/close.png",
                                width: 50,
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16, left: 16),
                        child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            controller: bloc.usernsme,
                            decoration: const InputDecoration(
                                labelStyle: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff707273),
                                ),
                                labelText: "Username",
                                hintText:
                                    "Enter your Mobile Number or Username",
                                hintStyle: TextStyle(
                                  color: Color(0xffAEB1B3),
                                ))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            obscureText: true,
                            controller: bloc.password,
                            decoration: const InputDecoration(
                                labelStyle: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff707273),
                                ),
                                labelText: "Password",
                                hintText: "......",
                                hintStyle: TextStyle(
                                  color: Color(0xffAEB1B3),
                                  fontSize: 32,
                                ))),
                      ),
                      Text(
                        bloc.errormsg,
                        style: TextStyle(color: Colors.red),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Checkbox(
                              value: bloc.rememberMyIdChecked,
                              onChanged: (value) {
                                bloc.rememberMyIdChecked = value!;
                                bloc.savingRemrmberMyid(bloc.rememberMyIdChecked
                                    ? bloc.usernsme.text
                                    : "");
                                setState(() {});
                              },
                            ),
                            const Text(
                              "Remember my  login.",
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff95989A),
                              ),
                            )
                          ],
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 8.0, right: 8),
                      //   child: Row(
                      //     children: [
                      //       Checkbox(
                      //           value: bloc.useFingerPrintChecked,
                      //           onChanged: (value) {
                      //             bloc.savefingerprint(value ?? false);
                      //             bloc.useFingerPrintChecked = value!;

                      //             setState(() {});
                      //           }),
                      //       const Text(
                      //         "Use fingerprint recognition next time",
                      //         style: TextStyle(
                      //             color: Color(0xff95989A), fontSize: 13),
                      //       )
                      //     ],
                      //   ),
                      // ),
                      CustomButton(
                          backgroundcolor: const [
                            Color(0xff027FAC),
                            Color(0xff16CFF3)
                          ],
                          textname: "Sign in",
                          textcolor: Colors.white,
                          ontappress: () {
                            bloc.validation(context);
                            setState(() {});
                          }),
                      CustomButton(
                          backgroundcolor: const [
                            Color(0xff027FAC),
                            Color(0xff16CFF3)
                          ],
                          textname: "Create new account",
                          textcolor: Colors.white,
                          ontappress: () {})
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
