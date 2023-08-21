import 'package:flutter/material.dart';
import 'package:instagram_ui/login_page.dart';

void main() {
  runApp(MaterialApp(
    home: IntroPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Instagram",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Shyest'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/ranaldo.jpeg"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "jacobs_w",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    minWidth: MediaQuery.of(context).size.width - 80,
                    height: 40,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginPage()));
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Switch accounts",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(height: 20,),
                Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have account?",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                    SizedBox(width: 8,),
                    Text(
                      "Sign up",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    )
                  ],
                ),
                SizedBox(height: 20,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
