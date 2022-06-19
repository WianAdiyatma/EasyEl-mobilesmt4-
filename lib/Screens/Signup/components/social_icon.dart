import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gridviewtes1/constants.dart';

class SocalIcon extends StatelessWidget {
  final String iconSrc;
  final Function() press;
  const SocalIcon({
    Key? key,
    required this.iconSrc,
    required this.press,
  }) : super(key: key);

  //menambahkan ikon sosmed untuk opsi lain login (saya offkan)
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          border: Border.all(
            width: 0,
            color: kPrimaryLightColor,
          ),

        ),
        child: SvgPicture.asset(
          iconSrc,
          height: 0,
          width: 0,
        ),
      ),
    );
  }
}
