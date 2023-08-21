import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SvgPicture.asset(
                        "assets/back.svg",
                        width: 20,
                        height: 20,
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Text(
                    "Instagram",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Shyest'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Username",
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Password",
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                  MaterialButton(
                    disabledColor: Colors.blue[100],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    minWidth: MediaQuery.of(context).size.width - 20,
                    height: 50,
                    onPressed: null,
                    child: Text(
                      "Log in",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
