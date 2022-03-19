import 'package:accountant/screens/createaccount/createaccountbloc.dart';
import 'package:accountant/screens/createaccount/widget/googlefacebookinsta.dart';
import 'package:accountant/screens/createaccount/widget/havealradyaccount.dart';
import 'package:accountant/screens/loginScreen/login_Screen.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  var bloc = Createaccountbloc();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  const Center(child: Center(child: Text("Register"))),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 90, left: 28, right: 15),
                child: TextField(
                  controller: bloc.namecontroller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: "Name",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  right: 28,
                  left: 28,
                ),
                child: TextField(
                  controller: bloc.mobilecontroller,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: "Mobile Number / Email",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, right: 28, left: 28, bottom: 38),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  controller: bloc.createpasswordcontroller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: "Create Password",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 35,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    bloc.validationRegister(context);
                    setState(() {});
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(color: Colors.teal),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.teal),
                  ),
                ),
              ),
              Text(
                bloc.erorrmsg,
                style: const TextStyle(color: Colors.red),
              ),
              const SizedBox(height: 50),
              loginwithotherapp(context),
              havealreadyaccount(context)
            ],
          ),
        ),
      ),
    );
  }
}
