import 'package:flutter/material.dart';
import 'package:gridviewtes1/CardHome/CardHome.dart';
import 'package:gridviewtes1/CardVideoandPdf/CardPDF.dart';
import 'package:gridviewtes1/Pdf/pdfviewer.dart';
import 'package:gridviewtes1/CardVideoandPdf/CardVideo.dart';
import 'package:gridviewtes1/Screens/Welcome/welcome_screen.dart';
import 'package:gridviewtes1/constants.dart';
import 'MateriVideo/YoutubeViewer.dart';

void main() => runApp(const Welcome());

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  // widget root app saya.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Halaman login',//change this pls later, ffs
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const WelcomeScreen(),
    );
  }
}

class ytv1 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Materi Video',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: YoutubePlayerDemo1(title: 'Materi kelas 1'),
    );
  }
}
class ytv2 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Materi Video',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: YoutubePlayerDemo2(title: 'Materi kelas 2'),
    );
  }
}
class ytv3 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Materi Video',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: YoutubePlayerDemo3(title: 'Materi kelas 3'),
    );
  }
}
class ytv4 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Materi Video',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: YoutubePlayerDemo4(title: 'Materi kelas 4'),
    );
  }
}
class ytv5 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Materi Video',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: YoutubePlayerDemo5(title: 'Materi kelas 5'),
    );
  }
}
class ytv6 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Materi Video',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: YoutubePlayerDemo6(title: 'Materi kelas 6'),
    );
  }
}


