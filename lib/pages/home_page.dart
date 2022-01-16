import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sylhet_mart/constant.dart';
import 'package:sylhet_mart/screens/account_screen.dart';
import 'package:sylhet_mart/screens/cart_screen.dart';
import 'package:sylhet_mart/screens/home_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

int _selectedIndex = 0;

class _HomePageState extends State<HomePage> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = <Widget>[
      const HomeScreen(),
      Container(),
      const CartScreen(),
      const AccountScreen(),
    ];

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          extendBody: true,
          bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            child: BottomNavigationBar(
              backgroundColor: formcolor,
              type: BottomNavigationBarType.fixed,
              elevation: 5,
              selectedItemColor: Colors.pink[900],
              showUnselectedLabels: true,
              selectedFontSize: 20,
              selectedLabelStyle: GoogleFonts.abrilFatface(fontSize: 12),
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite,
                  ),
                  label: 'Wish List',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart),
                  label: 'Cart',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_rounded),
                  label: 'Account',
                ),
              ],
            ),
          ),
          body: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ));
    });
  }
}
