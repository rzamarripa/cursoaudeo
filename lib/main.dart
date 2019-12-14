import 'package:cursouadeo/sliderpage.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';
import 'alertpage.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: Text("Hola"),
      initialRoute: "/",
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => HomePage(),
        'alert': (context) => AlertPage(),
        'slider': (context) => SliderPage(),
      },
      onGenerateRoute: (settings) {
        print("Entré aquí");
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      }
    );
  }
}