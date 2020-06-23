import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(     
      body: Container(
        width: width,
        height: 300,
        //color: Colors.blue,
        child: Stack(
          alignment: Alignment.topRight,
          children: <Widget>[
            ClipPath(
              clipper: MyClipper3(),
              child: Container(
                width: width,
                height: 300,
                color: Colors.blue.shade600,
              ),
            ),
            ClipPath(
              clipper: MyClipper2(),
              child: Container(
                width: width * 0.80,
                height: 300 * 0.80,
                color: Colors.blue.shade500,
              ),
            ),
            ClipPath(
              clipper: MyClipper1(),
              child: Container(
                width: width * 0.40,
                height: 300 * 0.60,
                color: Colors.blue.shade400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.quadraticBezierTo(
        size.width - 150, size.height - 50, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class MyClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.quadraticBezierTo(
        size.width - 280, size.height - 50, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class MyClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(10, size.height - 40, 40, size.height - 40);
    path.lineTo(size.width - 40, size.height - 40);
    path.quadraticBezierTo(
        size.width - 10, size.height - 40, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
