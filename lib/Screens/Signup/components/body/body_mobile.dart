import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gridviewtes1/Screens/Login/login_screen.dart';
import 'package:gridviewtes1/Screens/Signup/components/background.dart';
import 'package:gridviewtes1/Screens/Signup/components/or_divider.dart';
import 'package:gridviewtes1/Screens/Signup/components/social_icon.dart';
import 'package:gridviewtes1/components/already_have_an_account_acheck.dart';
import 'package:gridviewtes1/components/rounded_button.dart';
import 'package:gridviewtes1/components/rounded_input_field.dart';
import 'package:gridviewtes1/components/rounded_password_field.dart';

class BodyMobile extends StatelessWidget {
  const BodyMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Sign-Up",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Username / email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "REGISTER",
              press: () {},//------------GANTI-------------------MARK-----------------GANTI---------------MARK----------------
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
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
            const OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
