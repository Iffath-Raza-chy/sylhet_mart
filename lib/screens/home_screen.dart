
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      backgroundColor: const Color.fromRGBO(119, 101, 128, 100),
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15))),
        centerTitle: true,
        title: const Text('Home'),
        backgroundColor: Colors.pink[900],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Center(
              child: Text(
                'Categories',
                style: GoogleFonts.alice(fontSize: 20),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.black45,
                    ),
                    height: height * 0.12,
                    width: width * 0.3,
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/categories/electdevices.png',
                          fit: BoxFit.cover,
                        ),
                        Center(
                          child: Text(
                            'Electronics',
                            style: GoogleFonts.bowlbyOneSc(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                onTap: () {},
              ),
              InkWell(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.black45,
                    ),
                    height: height * 0.15,
                    width: width * 0.3,
                    child: Stack(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 8, right: 8, top: 9),
                          child: Image.asset(
                            'assets/images/categories/grocery.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Center(
                          child: Text(
                            'Groceries',
                            style: GoogleFonts.alikeAngular(
                                color: const Color.fromRGBO(0, 242, 255, 100),
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  print('object');
                },
              ),
              InkWell(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.black45,
                    ),
                    height: height * 0.15,
                    width: width * 0.3,
                    child: Stack(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 5, left: 8, right: 8),
                          child: Image.asset(
                            'assets/images/categories/sports.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Center(
                          child: Text(
                            'Sports',
                            style: GoogleFonts.alikeAngular(
                                color: const Color.fromRGBO(0, 242, 255, 100),
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                onTap: () {
             
                  print('object');
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
