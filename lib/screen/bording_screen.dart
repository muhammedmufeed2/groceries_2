import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries_project/screen/login_page.dart';

class Bording extends StatefulWidget {
  const Bording({super.key});

  @override
  State<Bording> createState() => _BordingState();
}

class _BordingState extends State<Bording> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/8140 1 (1).png",
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/logo.png",
                  width: 38,
                  height: 43,
                ),
                Text(
                  "  welcome \nto our store ",
                  style: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Ger your groceries in as fast as one hour",
                  style: TextStyle(color: Color(0XFFFCFCFC)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 21),
                  child: Container(
                    width: 353,
                    height: 67,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff53B175)),
                    child: Center(
                        child: GestureDetector(onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                          child: Text(
                            "Get started",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
