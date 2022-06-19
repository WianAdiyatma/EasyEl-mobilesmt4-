import 'package:flutter/material.dart';
import 'package:gridviewtes1/constants.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02), //menambah space untuk garis untuk pembagi opsi login lainnya... (gak terlalu penting)
      width: size.width * 0.0,//mengatur panjang garis pembagi untuk opsi login sosmed (garis pembagi width)
      child: Row(
        children: <Widget>[
          buildDivider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "ATAU",//menambah text "atau" untuk opsi login lain jika *garis pembagi widthnya nggak 0*
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          buildDivider(),
        ],
      ),
    );
  }

  Expanded buildDivider() {
    return const Expanded(
      child: Divider(
        color: Color(0xFFD9D9D9),
        height: 1.5,
      ),
    );
  }
}
