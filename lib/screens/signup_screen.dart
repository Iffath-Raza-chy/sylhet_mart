
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                      'Sign Up',
                      style: GoogleFonts.akayaTelivigala(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Fill these form to register',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      style: GoogleFonts.inter(fontSize: 15),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 8, top: 8, bottom: 8),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: formcolor),
                          child: TextFormField(
                            cursorColor: Colors.blue,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                    left: 15, bottom: 15, top: 15, right: 15),
                                hintText: "First Name"),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 8, right: 8, bottom: 8),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: formcolor),
                          child: TextFormField(
                            cursorColor: Colors.blue,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                    left: 15, bottom: 15, top: 15, right: 15),
                                hintText: "Last Name"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: formcolor),
                    child: TextFormField(
                      cursorColor: Colors.blue,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 15, top: 15, right: 15),
                          hintText: "Email"),
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
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: InkWell(
                            child: const Icon(Icons.remove_red_eye),
                            onTap: () {
                              print('object');
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: formcolor),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: InkWell(
                            child: const Icon(Icons.remove_red_eye),
                            onTap: () {
                              print('object');
                            },
                          ),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: const EdgeInsets.only(
                              left: 15, bottom: 15, top: 15, right: 15),
                          hintText: "Confirm Password"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
