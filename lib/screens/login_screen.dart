import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sylhet_mart/loginrequest.dart';
import 'package:sylhet_mart/pages/home_page.dart';

import '../constant.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var ctEmailOrPhone = TextEditingController();
  var ctPassword = TextEditingController();
  var msg = "";
  bool obs = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Center(
                    child: Text(
                      'Log In',
                      style: GoogleFonts.baiJamjuree(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Enter your login details to access your account',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      style: GoogleFonts.inter(fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: formcolor),
                    child: TextFormField(
                      controller: ctEmailOrPhone,
                      cursorColor: Colors.blue,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              ctEmailOrPhone.clear();
                            },
                            icon: const Icon(Icons.clear),
                          ),
                          prefixIcon: const Icon(Icons.email),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: const EdgeInsets.only(
                              left: 15, bottom: 15, top: 15, right: 15),
                          hintText: "Email/Phone"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: formcolor),
                    child: TextFormField(
                      obscureText: obs,
                      controller: ctPassword,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.remove_red_eye,
                              color: obs ? Colors.grey[700] : Colors.blue,
                            ),
                            onPressed: () {
                              if (obs == true) {
                                setState(() {
                                  obs = false;
                                });
                              } else if (obs == false) {
                                setState(() {
                                  obs = true;
                                });
                              }
                            },
                          ),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: const EdgeInsets.only(
                              left: 15, bottom: 15, top: 15, right: 15),
                          hintText: "Password"),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    child: const Padding(
                      padding: EdgeInsets.only(right: 8, top: 4),
                      child: Text(
                        'Forgot your password?',
                        style: TextStyle(shadows: [
                          Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 3.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ]),
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () async {
                    setState(() {
                      username = ctEmailOrPhone.text;
                      password = ctPassword.text;
                      loginRequest();
                    });
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(
                      top: 8,
                      bottom: 8,
                      left: 50,
                      right: 50,
                    ),
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
