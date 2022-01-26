import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sylhet_mart/pages/home_page.dart';
import 'package:http/http.dart' as http;
import '../constant.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _firstname = TextEditingController();
  final TextEditingController _lastname = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _divisionID = TextEditingController();
  final TextEditingController _districtID = TextEditingController();
  final TextEditingController _upazilaID = TextEditingController();
  final TextEditingController _postcode = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmpassword = TextEditingController();

  clearController() {
    _firstname.clear();
    _lastname.clear();
    _email.clear();
    _phone.clear();
    _divisionID.clear();
    _districtID.clear();
    _upazilaID.clear();
    _postcode.clear();
    _password.clear();
    _confirmpassword.clear();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _firstname.dispose();
    _lastname.dispose();
    _email.dispose();
    _phone.dispose();
    _divisionID.dispose();
    _districtID.dispose();
    _upazilaID.dispose();
    _postcode.dispose();
    _password.dispose();
    _confirmpassword.dispose();
  }

  var msg = '';
  newUserRegistration() async {
    String link = 'https://api.ishaqi.com/customerignup';
    Uri url = Uri.parse(link);
    Map data = {
      'customer_name': _firstname.text + ' ' + _lastname.text,
      'email': _email.text,
      'phone': _phone.text,
      'division_id': _divisionID.text,
      'district_id': _districtID.text,
      'upazilla_id': _upazilaID.text,
      'post_code': _postcode.text,
      'password': _confirmpassword.text,
    };
    var jsonData = json.encode(data);
    var response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonData,
    );
    print(response.statusCode);
    print(response.body);
    var returnData = jsonDecode(response.body);
    msg = returnData['message'];
    if (returnData['status'] == 'SUCCESS') {
      Get.snackbar(
        'Success',
        returnData['message'],
        backgroundColor: Colors.green,
      );
    } else if (returnData['status'] == 'ERROR') {
      Get.snackbar(
        'Error',
        returnData['message'],
        backgroundColor: Colors.red,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: GoogleFonts.akayaTelivigala(
                            fontSize: 25, fontWeight: FontWeight.bold),
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
                              controller: _firstname,
                              cursorColor: Colors.blue,
                              decoration: const InputDecoration(
                                errorBorder: InputBorder.none,
                                border: InputBorder.none,
                                // focusedBorder: InputBorder.none,
                                // enabledBorder: InputBorder.none,
                                // disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                    left: 15, bottom: 15, top: 15, right: 15),
                                hintText: "First Name",
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter First Name';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8, right: 8, bottom: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: formcolor),
                            child: TextFormField(
                              controller: _lastname,
                              cursorColor: Colors.blue,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(
                                      left: 15, bottom: 15, top: 15, right: 15),
                                  hintText: "Last Name"),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter Las Name';
                                }
                                return null;
                              },
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
                        controller: _email,
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Email';
                          }
                          return null;
                        },
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
                        controller: _phone,
                        cursorColor: Colors.blue,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                                left: 15, bottom: 15, top: 15, right: 15),
                            hintText: "Phone"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Phone';
                          }
                          return null;
                        },
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
                              controller: _divisionID,
                              cursorColor: Colors.blue,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(
                                      left: 15, bottom: 15, top: 15, right: 15),
                                  hintText: "Division ID"),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'DivisionID Missing';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8, right: 8, bottom: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: formcolor),
                            child: TextFormField(
                              controller: _districtID,
                              cursorColor: Colors.blue,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(
                                      left: 15, bottom: 15, top: 15, right: 15),
                                  hintText: "District ID"),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'DistrictID Missing';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
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
                              controller: _upazilaID,
                              cursorColor: Colors.blue,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(
                                      left: 15, bottom: 15, top: 15, right: 15),
                                  hintText: "Upazila ID"),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'UpazilaID Missing';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8, right: 8, bottom: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: formcolor),
                            child: TextFormField(
                              controller: _postcode,
                              cursorColor: Colors.blue,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(
                                      left: 15, bottom: 15, top: 15, right: 15),
                                  hintText: "Post Code"),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Post Code Missing';
                                }
                                return null;
                              },
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
                        controller: _password,
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Password';
                          }
                          return null;
                        },
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
                        controller: _confirmpassword,
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Confirm Password';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          onPressed: () {
                            clearController();
                          },
                          child: Text('Clear')),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            setState(
                              () {
                                newUserRegistration();
                              },
                            );
                          }
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 8,
                            bottom: 8,
                            left: 50,
                            right: 50,
                          ),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
