import 'package:flutter/material.dart';

class KClippPathAppbar extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Offset Controllpoint = Offset(size.width * .24, size.height);
    Offset endpoint = Offset(size.width * .25, size.height * .98);
    Offset Controllpoint2 = Offset(size.width * .3, size.height * .78);
    Offset endpoint2 = Offset(size.width * .5, size.height * .78);
    Offset Controllpoint3 = Offset(size.width * .7, size.height * .78);
    Offset endpoint3 = Offset(size.width * .75, size.height * .96);
    Offset Controllpoint4 = Offset(size.width * .76, size.height);
    Offset endpoint4 = Offset(size.width * .79, size.height);
    Path path = Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width * .21, size.height)
      ..quadraticBezierTo(
          Controllpoint.dx, Controllpoint.dy, endpoint.dx, endpoint.dy)
      ..quadraticBezierTo(
          Controllpoint2.dx, Controllpoint2.dy, endpoint2.dx, endpoint2.dy)
      ..quadraticBezierTo(
          Controllpoint3.dx, Controllpoint3.dy, endpoint3.dx, endpoint3.dy)
      ..quadraticBezierTo(
          Controllpoint4.dx, Controllpoint4.dy, endpoint4.dx, endpoint4.dy)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

// class RPSCustomPainter extends CustomPainter {
  // @override
  // void paint(Canvas canvas, Size size) {
    // Paint paint0 = Paint()
      // ..color = const Color.fromARGB(255, 33, 150, 243)
      // ..style = PaintingStyle.stroke
      // ..strokeWidth = 1;
// 
    // Path path0 = Path();
    // path0.moveTo(size.width * 0.0060060, size.height * 0.0090090);
    // path0.lineTo(size.width * 0.0030030, size.height * 0.0870871);
    // path0.lineTo(size.width * 0.0060060, size.height * 0.2252252);
    // path0.lineTo(size.width * 0.0030030, size.height * 0.9879880);
    // path0.lineTo(size.width * 0.2312312, size.height * 0.9879880);
    // path0.lineTo(size.width * 0.3273273, size.height * 0.9159159);
    // path0.lineTo(size.width * 0.3273273, size.height * 0.8558559);
    // path0.lineTo(size.width * 0.3753754, size.height * 0.7897898);
    // path0.lineTo(size.width * 0.3873874, size.height * 0.7567568);
    // path0.lineTo(size.width * 0.5075075, size.height * 0.7417417);
    // path0.lineTo(size.width * 0.5795796, size.height * 0.7927928);
    // path0.lineTo(size.width * 0.6636637, size.height * 0.9129129);
    // path0.lineTo(size.width * 0.6636637, size.height * 0.9879880);
    // path0.lineTo(size.width * 0.8108108, size.height * 0.9879880);
    // path0.lineTo(size.width * 0.9939940, size.height * 0.9879880);
    // path0.lineTo(size.width * 0.9819820, size.height * 0.0150150);
    // path0.lineTo(size.width * 0.0270270, size.height * 0.0150150);
// 
    // canvas.drawPath(path0, paint0);
  // }
// 
  // @override
  // bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // return true;
  // }
// }
// 