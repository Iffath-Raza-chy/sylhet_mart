import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sylhet_mart/constant.dart';
import 'package:sylhet_mart/pages/home_page.dart';
import 'package:sylhet_mart/screens/login_screen.dart';
import 'package:sylhet_mart/screens/signup_screen.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  var pageno = 0;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // var avconstraints =
        //     ((constraints.maxHeight + constraints.maxHeight) / 2);
        // var height = constraints.maxHeight;
        // var width = constraints.maxWidth;
        return Scaffold(
          resizeToAvoidBottomInset: true,
          body: Center(
            child: ListView(
              shrinkWrap: true,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    pageno == 0 ? const LoginPage() : const SignUpPage(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            pageno == 0
                                ? Text('Dont Have an account?',
                                    style: GoogleFonts.dongle(fontSize: 20))
                                : Text('Already have an account?',
                                    style: GoogleFonts.dongle(fontSize: 20)),
                            TextButton(
                              onPressed: () {
                                if (pageno == 0) {
                                  pageno = 1;
                                } else {
                                  pageno = 0;
                                }
                                setState(() {});
                              },
                              child: pageno == 0
                                  ? Text(
                                      'Sign Up',
                                      style: GoogleFonts.dongle(
                                          color: Colors.blue, fontSize: 25),
                                    )
                                  : Text(
                                      'Log In',
                                      style: GoogleFonts.dongle(
                                          color: Colors.blue, fontSize: 25),
                                    ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
