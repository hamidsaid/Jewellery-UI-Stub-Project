import 'dart:ui';
import 'screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:starting_project_jewellry_shop/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jewellery_Ecommerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: ConnectPage(),
    );
  }
}

class ConnectPage extends StatelessWidget {
  const ConnectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/door.png",
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            top: 60,
            left: 40,
            child: Material(
              elevation: 30.0,
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                width: 50,
                height: 50,
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/logo.svg'),
                ),
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 40,
            child: Text(
              "Bienvenue \nchez Tiger Jewelry",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: kTextColor),
            ),
          ),
          Positioned(
            bottom: 220.0,
            left: 30.0,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return LoginScreen();
                      }),
                    );
                  },
                  child: const Text(
                    "Connexion",
                    style: TextStyle(color: kTextColor, fontSize: 16),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: kTextColor.withOpacity(0.4),
                    fixedSize: const Size(300, 55),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: kTextColor, width: 2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 130.0,
            left: 30,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Inscription",
                style: TextStyle(color: kPurpleColor, fontSize: 16),
              ),
              style: TextButton.styleFrom(
                backgroundColor: kTextColor,
                fixedSize: const Size(300, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          const Positioned(
              bottom: 80,
              left: 110,
              child: Text(
                "Mot de passe oublié ?",
                style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                    fontSize: 16),
              ))
        ],
      ),
    );
  }
}
