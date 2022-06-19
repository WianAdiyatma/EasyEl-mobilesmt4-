import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gridviewtes1/CardHome/CardHome.dart';
import 'package:gridviewtes1/Screens/Signup/components/background.dart';
import 'package:gridviewtes1/Screens/Signup/signup_screen.dart';
import 'package:gridviewtes1/components/already_have_an_account_acheck.dart';
import 'package:gridviewtes1/components/rounded_button.dart';
import 'package:gridviewtes1/components/rounded_input_field.dart';
import 'package:gridviewtes1/components/rounded_password_field.dart';

class BodyMobile extends StatelessWidget {
  const BodyMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Login",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Username / email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                gotoSecondActivity(BuildContext context){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => cardhome()),
                  );

                }
                gotoSecondActivity(context);

              },
            ),


            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
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
