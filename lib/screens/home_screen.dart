import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sylhet_mart/constant.dart';
import 'package:sylhet_mart/screens/cart_screen.dart';
import 'package:sylhet_mart/screens/login_screen.dart';
import 'package:sylhet_mart/widgets/categories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: formcolor,
      appBar: AppBar(
        title: Text(
          'Sylhet Mart',
          style: TextStyle(color: Colors.red[600], fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: Icon(
              Icons.notifications_outlined,
            ),
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Container(
              color: Colors.white70,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 15, 8, 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: formcolor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        hintText: 'What woukd you like to buy?',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: InkWell(
                    child: Container(
                      color: Colors.white70,
                      height: 50,
                      child: Center(
                        child: Text('Categories'),
                      ),
                    ),
                    onTap: () {
                      print('Categories');
                    },
                  ),
                ),
                const SizedBox(
                  width: 2,
                ),
                Expanded(
                  child: InkWell(
                    child: Container(
                      color: Colors.white70,
                      height: 50,
                      child: const Center(
                        child: Text('Brands'),
                      ),
                    ),
                    onTap: () {
                      print('Brands');
                    },
                  ),
                ),
                const SizedBox(
                  width: 2,
                ),
                Expanded(
                  child: InkWell(
                    child: Container(
                      color: Colors.white70,
                      height: 50,
                      child: const Center(
                        child: Text('Shops'),
                      ),
                    ),
                    onTap: () {
                      print('Shops');
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Categories(
            dheight: height,
            dwidth: width,
          )
        ],
      ),
    );
  }
}
