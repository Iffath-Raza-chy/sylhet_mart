import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

var username = '';
var password = '';
var msg = '';
var body;
var jsonString;

loginRequest() async {
  String link = 'https://api.ishaqi.com/customerlogin';
  Uri url = Uri.parse(link);
  Map data = {
    'user_name': username,
    'password': password,
  };

  body = json.encode(data);

  var response = await http.post(url, body: body, headers: {
    'Content-Type': 'application/json',
  });

  print(response.statusCode);
  print(response.body);

  print(username);
  print(password);

  jsonString = jsonDecode(response.body);

  print(jsonString);
  msg = jsonString['message'];
  if (jsonString['status'] == 'SUCCESS') {
    Get.snackbar(
      'Success',
      jsonString['message'],
      backgroundColor: Colors.green,
    );
  } else if (jsonString['status'] == 'ERROR') {
    Get.snackbar(
      'Error',
      jsonString['message'],
      backgroundColor: Colors.red,
    );
  }
}
