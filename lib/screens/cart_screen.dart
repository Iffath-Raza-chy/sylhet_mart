import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: const Center(
        child: Text('Cart Page',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
      ),
    );
    ;
  }
}
