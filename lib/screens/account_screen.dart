import 'package:flutter/material.dart';

import 'custompaint.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.yellow[800],
              borderRadius: BorderRadius.circular(100),
            ),
            child: CustomPaint(
              painter: CustPainter(),
              size: Size.square(10),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 250,
            width: 250,
            color: Colors.green,
            child: CustomPaint(
              painter: LinePainter(),
            ),
          ),
        ],
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // canvas.drawLine(
    //   Offset(5, size.height / 2),
    //   Offset(size.width - 5, size.height / 2),
    //   Paint()..strokeWidth = 10,
    // );
    canvas.drawOval(
      Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2), radius: 60),
      Paint(),
    );
  }

  @override
  bool shouldRepaint(LinePainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(LinePainter oldDelegate) => false;
}
