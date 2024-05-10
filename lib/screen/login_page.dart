import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  const Login({
    super.key,
  });

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _isObscure = true;

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
                "assets/Rectangle 17 (1).png",
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 63, left: 163),
                  child: Image.asset("assets/Group (4).png"),
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Loging",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Enter your emails and password",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0XFF7C7C7C),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0XFF7C7C7C),
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                  ),
                ),
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0XFF7C7C7C),
                  ),
                ),
                TextField(
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
                  obscuringCharacter: "*",
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 220),
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(fontSize: 14, color: Color(0XFF181725)),
                  ),
                ),Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 30),
                  child: Container(
                    width: 364,height: 67,decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),color: Color(0XFF53B175),
                  ),child: Center(
                    child: Text("Login",style: TextStyle(
                      fontSize: 18,color: Colors.white,
                    ),),
                  ),
                  ),
                ),Padding(
                  padding: const EdgeInsets.only(top: 21,left:73),
                  child: Row(
                    children: [
                      Text("Don't have an account?"),SizedBox(width: 10,),Text("Signup",style: TextStyle(color: Colors.green),),
                    ],
                  ),
                ),
              ],
            ),
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
