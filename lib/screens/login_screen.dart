import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:starting_project_jewellry_shop/constants.dart';
import 'components/form_fields.dart';
import 'components/gradient_btn.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: device.height * 0.5,
                  width: device.width,
                  child: CustomPaint(
                    painter: CurvePainter(),
                  ),
                ),
                Positioned(
                  left: 40.0,
                  top: 60.0,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: SvgPicture.asset(
                      "assets/icons/Vector.svg",
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 36,
                  child: Image.asset(
                    "assets/images/boxes2.png",
                    fit: BoxFit.fill,
                  ),
                ),
                const Positioned(
                  top: 180,
                  left: 40,
                  child: Text(
                    "Salut, \nSteven",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 26,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: device.height * 0.04,
            ),
            FormBuild(
              headline: "Email",
              icon: Icons.mark_email_read_outlined,
              placeHolder: "stevenkenjjad@gmail.com",
            ),
            FormBuild(
              headline: "Mot de passe",
              icon: Icons.vpn_key_outlined,
              placeHolder: "\t\t***********",
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: GradientBtn(),
            )
          ],
        ),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = kMainColor;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height);
    path.lineTo(size.width * 0.2, size.height);
    path.lineTo(size.width * 0.2, size.height * 0.88);
    path.lineTo(size.width * 0.45, size.height * 0.88);
    path.lineTo(size.width * 0.45, size.height * 0.95);
    path.lineTo(size.width * 0.8, size.height * 0.95);
    path.lineTo(size.width * 0.8, size.height * 1.1);
    path.lineTo(size.width, size.height * 1.1);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
