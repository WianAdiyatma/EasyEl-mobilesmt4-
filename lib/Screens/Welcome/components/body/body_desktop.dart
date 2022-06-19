import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gridviewtes1/Screens/Login/login_screen.dart';
import 'package:gridviewtes1/Screens/Signup/signup_screen.dart';
import 'package:gridviewtes1/components/rounded_button.dart';
import 'package:gridviewtes1/constants.dart';

import '../background.dart';

class BodyDesktop extends StatelessWidget {
  const BodyDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.1,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: SvgPicture.asset(
                "assets/icons/chat.svg",
                height: size.height * 0.65,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    //----------------------
                    'WELCOME',//TEXT JUDUL DI HALAMAN AWAL LOGIN ***PENTING*** , dont change this ffs
                    //----------------------
                    style: TextStyle(
                      fontSize: size.height * 0.08,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
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
                    height: size.height * 0.07,
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
                    height: size.height * 0.07,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
