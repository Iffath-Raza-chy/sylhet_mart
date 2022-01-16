import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: const Center(
        child: Text('Account Page',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
