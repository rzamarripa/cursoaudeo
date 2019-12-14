import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Principal"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Alertas"),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              Navigator.pushNamed(context, "alert");
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Sliders"),
            trailing: Icon(Icons.account_balance),
            onTap: (){
              Navigator.pushNamed(context, "slider");
            },
          )
        ],
      ),
    );
  }
}