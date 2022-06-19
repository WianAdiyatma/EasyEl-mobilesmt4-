import 'package:flutter/material.dart';
import 'package:gridviewtes1/Screens/Login/components/body/body_desktop.dart';
import 'package:gridviewtes1/responsive/responsive.dart';
import 'body_mobile.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: BodyMobile(),
      tablet: BodyDesktop(),
      desktop: BodyDesktop(),
    );
  }
}
