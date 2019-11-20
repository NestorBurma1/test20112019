import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Random color',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Random color'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Map<int, MaterialColor> colors = {
    1: Colors.amber,
    2: Colors.blue,
    3: Colors.cyan,
    4: Colors.deepOrange,
    5: Colors.green,
    6: Colors.purple
  };
  var random = new Random();
  int randomNumber(int min, int max) => min + random.nextInt(max - min);
  int selection;
  int previousColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        return setState(() {
          selection = randomNumber(1, 6);
          previousColor = selection;
        });
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Random color",
              style: TextStyle(
                color: Colors.yellowAccent,
                fontSize: 30.0,
                fontFamily: 'BowlbyOneSC',
              ),
            ),
          ),
          body: Center(
              child: Text(
            'Hey there',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              fontFamily: 'BowlbyOneSC',
            ),
          )),
          backgroundColor: colors[selection]),
    );
  }
}
