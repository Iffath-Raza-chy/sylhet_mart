import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sylhet_mart/pages/welcome_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sylhet Mart',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white70,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      //darkTheme: ThemeData.dark(),
      home: const WelcomePage(),
    );
  }
}
