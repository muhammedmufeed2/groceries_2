import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:groceries_project/bottom/navigation_page.dart';

import '../bottom_page/navigation_page.dart';

class Sign extends StatefulWidget {
  const Sign({super.key});

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  var _isObscure = true;
  var _isObscure1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset("assets/Rectangle 17 (1).png"),
                  Positioned(
                      top: 77,
                      left: 170,
                      child: Image.asset("assets/Group (4).png")),
                ],
              ),
              Text(
                "Sign UP",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Enter your credentials to continue",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0XFF7C7C7C),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Username",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0XFF7C7C7C),
                ),
              ),
              SizedBox(
                width: 350,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Afsar Hossen Shuvo",
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Email",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0XFF7C7C7C),
                ),
              ),
              SizedBox(
                width: 350,
                child: TextFormField(
                  obscureText: _isObscure1,
                  decoration: InputDecoration(
                    hintText: "imshuvo97@gmail.com",
                    enabledBorder: InputBorder.none,
                    suffixIcon: Image.asset(
                      "assets/Vector (11).png",
                      width: 19,
                      height: 14,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Password",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0XFF7C7C7C),
                ),
              ),
              SizedBox(
                width: 350,
                child: TextField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    labelText: "Enter password",
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                      child: _setPasswordIcon(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "By continuing you agree to our ",
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          "Termas of service",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.greenAccent,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "and",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Prvicy and policy",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.greenAccent,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5,right: 10),
                child: Container(
                  width: 364,
                  height: 67,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xfff53B175),
                  ),
                  child: Center(child: GestureDetector(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BottamNavigation()));
                  },
                    child: Text("Sign up",style: TextStyle(
                      fontSize: 18,color: Colors.white,
                    ),),
                  )),
                ),
              ),Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),Text("Sign up",style: TextStyle(
                      color: Colors.greenAccent,
                    ),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Icon _setPasswordIcon() {
    if (_isObscure) {
      return Icon(Icons.visibility);
    } else {
      return Icon(Icons.visibility_off);
    }
  }
}
