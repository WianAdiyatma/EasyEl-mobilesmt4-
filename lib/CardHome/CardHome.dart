import 'package:flutter/material.dart';
import 'package:gridviewtes1/CardVideoandPdf/CardPDF.dart';
import 'package:gridviewtes1/CardVideoandPdf/CardVideo.dart';
import 'package:gridviewtes1/constants.dart';

class cardhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Learning',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState()
  {
    return _MyHomePageState();
  }
}

//card 1
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Home',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.redAccent
        ),
        body: Column(
          children: const <Widget>[
            Spacer(),
            ElevatedCardExample(),
            ElevatedCardExamples(),
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
class ElevatedCardExample extends StatelessWidget {
  const ElevatedCardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
          color: Colors.redAccent[100],
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PdfCard()),
              );
            },
            child: SizedBox(
              width: 400,
              height: 100,
              child: Center(child: Text('Materi PDF',style: TextStyle(color: Colors.white,
                  fontSize: 20))),
            ),
          ),
        ));
  }
}

class ElevatedCardExamples extends StatelessWidget {
  const ElevatedCardExamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
          color: Colors.red[400],
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VideoCard()),
              );
            },
            child: SizedBox(
              width: 400,
              height: 100,
              child: Center(child: Text('Materi Video',style: TextStyle(color: Colors.white,
                  fontSize: 20),)),
            ),
          ),
        ));
  }
}