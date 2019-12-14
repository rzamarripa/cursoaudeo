import 'package:flutter/material.dart';

class HerreraPage extends StatelessWidget {
  const HerreraPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                title: Text("YO", style: TextStyle(color: Colors.redAccent),),
      ),
      body: Center(
        child: Text("Hola soy Esteban Herrera"),
      ),
    );
  }
}