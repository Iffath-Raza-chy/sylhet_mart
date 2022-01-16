import 'package:flutter/material.dart';
import 'package:sylhet_mart/widgets/categories.dart';

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
        child: Categories(dheight: MediaQuery.of(context).size.height,dwidth: MediaQuery.of(context).size.width,));
    ;
  }
}
