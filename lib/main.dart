import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


import 'package:cursouadeo/carlos.dart';
import 'package:cursouadeo/cosme.dart';
import 'package:cursouadeo/herrera.dart';
import 'package:cursouadeo/medrano.dart';
import 'package:cursouadeo/pacheco.dart';
import 'package:cursouadeo/paulina.dart';
import 'package:cursouadeo/selene.dart';
import 'package:cursouadeo/sliderpage.dart';
import 'package:cursouadeo/zamarripa.dart';


import 'homepage.dart';
import 'alertpage.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        const Locale("es", "ES")
      ],
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: Text("Hola"),
      initialRoute: "/",
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => HomePage(),
        'alert': (context) => AlertPage(),
        'slider': (context) => SliderPage(),
        'zamarripa': (context) => ZamarripaPage(),
        'medrano': (context) => MedranoPage(),
        'selene': (context) => SelenePage(),
        'carlos': (context) => CarlosPage(),
        'herrera': (context) => HerreraPage(),
        'pacheco': (context) => PachecoPage(),
        'paulina': (context) => PaulinaPage(),
        'cosme': (context) => CosmePage(),
        
      },
      onGenerateRoute: (settings) {
        print("Entré aquí");
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      }
    );
  }
}