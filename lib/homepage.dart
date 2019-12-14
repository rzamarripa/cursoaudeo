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
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              Navigator.pushNamed(context, "slider");
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Medrano"),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              Navigator.pushNamed(context, "medrano");
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Selene"),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              Navigator.pushNamed(context, "selene");
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Carlos"),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              Navigator.pushNamed(context, "carlos");
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Alexis"),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              Navigator.pushNamed(context, "herrera");
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Paulina"),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              Navigator.pushNamed(context, "paulina");
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Pacheco"),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              Navigator.pushNamed(context, "pacheco");
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Zamarripa"),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              Navigator.pushNamed(context, "zamarripa");
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Cosme"),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              Navigator.pushNamed(context, "cosme");
            },
          )
        ],
      ),
    );
  }
}