import 'package:flutter/material.dart';
import 'package:gridviewtes1/CardHome/CardHome.dart';
import 'package:gridviewtes1/Pdf/pdfviewer.dart';
import 'package:gridviewtes1/main.dart';





class VideoCard extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: MyHomefruti(
        )
    );
  }
}

class MyHomefruti extends StatefulWidget {
  @override
  fruti createState()
  {
    return fruti();
  }
}


class fruti extends State<MyHomefruti> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Materi Video',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.redAccent,
          leading: GestureDetector(
              child: Icon( Icons.arrow_back_ios, color: Colors.white,  ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => cardhome()),
                );
              }
          ),
        ),
        body: Column(
          children: const <Widget>[

            ElevatedCardExamples1(),
            ElevatedCardExamples2(),
            ElevatedCardExamples3(),
            ElevatedCardExamples4(),
            ElevatedCardExamples5(),
            ElevatedCardExamples6(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

/// An example of the elevated card type.
///
/// The default settings for [Card] will provide an elevated
/// card matching the spec:
///
/// https://m3.material.io/components/cards/specs#a012d40d-7a5c-4b07-8740-491dec79d58b
class ElevatedCardExamples1 extends StatelessWidget {
  const ElevatedCardExamples1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ytv1()),
              );},
            child: SizedBox(
              width: 450,
              height: 100,
              child: Center(child: Text('Materi Video Kelas 1',style: TextStyle(fontWeight: FontWeight.bold))),
            ),
          ),
        ));
  }
}

class ElevatedCardExamples2 extends StatelessWidget {
  const ElevatedCardExamples2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ytv2()),
    );},

            child: SizedBox(
              width: 450,
              height: 100,
              child: Center(child: Text('Materi Video Kelas 2',style: TextStyle(fontWeight: FontWeight.bold))),
            ),
          ),
        ));
  }
}
class ElevatedCardExamples3 extends StatelessWidget {
  const ElevatedCardExamples3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ytv3()),
              );},
            child: SizedBox(
              width: 450,
              height: 100,
              child: Center(child: Text('Materi Video Kelas 3',style: TextStyle(fontWeight: FontWeight.bold))),
            ),
          ),
        ));
  }
}
class ElevatedCardExamples4 extends StatelessWidget {
  const ElevatedCardExamples4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ytv4()),
              );},
            child: SizedBox(
              width: 450,
              height: 100,
              child: Center(child: Text('Materi Video Kelas 4',style: TextStyle(fontWeight: FontWeight.bold))),
            ),
          ),
        ));
  }
}
class ElevatedCardExamples5 extends StatelessWidget {
  const ElevatedCardExamples5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ytv5()),
              );},
            child: SizedBox(
              width: 450,
              height: 100,
              child: Center(child: Text('Materi Video Kelas 5',style: TextStyle(fontWeight: FontWeight.bold))),
            ),
          ),
        ));
  }
}
class ElevatedCardExamples6 extends StatelessWidget {
  const ElevatedCardExamples6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ytv6()),
              );},
            child: SizedBox(
              width: 450,
              height: 100,
              child: Center(child: Text('Materi Video Kelas 6',style: TextStyle(fontWeight: FontWeight.bold))),
            ),
          ),
        ));
  }
}