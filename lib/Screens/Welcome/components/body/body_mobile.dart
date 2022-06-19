import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gridviewtes1/Screens/Login/login_screen.dart';
import 'package:gridviewtes1/Screens/Signup/signup_screen.dart';
import 'package:gridviewtes1/components/rounded_button.dart';
import 'package:gridviewtes1/constants.dart';

import '../background.dart';

class BodyMobile extends StatelessWidget {
  const BodyMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // Ukuran total tinggi dan lebar layar
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              //----------------------
              "WELCOME",//TEXT JUDUL DI HALAMAN AWAL LOGIN ***PENTING*** , dont change this ffs
              //----------------------
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "REGISTER",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
