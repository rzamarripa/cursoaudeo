import 'package:flutter/material.dart';

class ZamarripaPage extends StatefulWidget {
  const ZamarripaPage({Key key}) : super(key: key);

  @override
  _ZamarripaPageState createState() => _ZamarripaPageState();
}
class _ZamarripaPageState extends State<ZamarripaPage> {

  String _password = "";
  String _nombre = "";
  String _apPaterno = "";
  String _fecha = "";
  TextEditingController _inputFieldDateController = new TextEditingController();
  
  String _opcionSeleccionada = "Volar";
  List<String> _poderes = ["Volar", "Rayos X", "Súper Aliento", "Súper Fuerza"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Zamarripa"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _crearNombre(
            helper: "10 caracteres", 
            hint: "Escribe nombre", 
            label: "Nombre"
          ),
          SizedBox(height: 20.0),
          _crearApellido(),
          SizedBox(height: 20.0),
          _crearPassword(),
          SizedBox(height: 20.0),
          _crearFecha(context),
          SizedBox(height: 20.0),
          _crearDropDown(),
          SizedBox(height: 20.0),
          ListTile(
            leading: Icon(Icons.person_add),
            title: Text("Mi nombre es $_nombre"),
            subtitle: Text("Mi apellido es $_apPaterno"),
            trailing: Text("$_opcionSeleccionada"),
          )
        ],
      ),
    );
  }

  Widget _crearNombre({hint, label, helper}) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        helperText: helper,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)
        )
      ),
      onChanged: (valor){
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget _crearApellido(){
    return TextField(
      decoration: InputDecoration(
        hintText: "Apellido Paterno",
        labelText: "Apellido Paterno",
        helperText: "Escribe tu primer apellido",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)
        )
      ),
      onChanged: (valor){
        setState(() {
          _apPaterno = valor;
        });
      },
    );
  }

  Widget _crearPassword(){
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: "Password",
        labelText: "Password",
        helperText: "Escribir Password",
        suffixIcon: Icon(Icons.lock),
        icon: Icon(Icons.lock_open),
      ),
      onChanged: (valor){
        setState(() {
        _password = valor;          
        });
      },
    );
  }

  Widget _crearFecha( BuildContext context){
    return TextField(
      controller: _inputFieldDateController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: "Fecha de nacimiento",
        labelText: "Fecha de nacimiento",
        helperText: "Escribir de nacimiento",
        suffixIcon: Icon(Icons.perm_contact_calendar),
        icon: Icon(Icons.calendar_today),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async{
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2020),
      locale: Locale("es", "ES")
    );

    if( picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputFieldDateController.text = _fecha;
      });
    }
  }

  Widget _crearDropDown(){
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0),
        Expanded(
          child: DropdownButton(
            value: _opcionSeleccionada,
            items: getOpcionesDropDown(),
            onChanged: (opt) {
              print(opt);
              setState(() {
                _opcionSeleccionada = opt;
              });
            },
          ),
        )
      ],
    );    
  }

   List<DropdownMenuItem<String>> getOpcionesDropDown(){
    List<DropdownMenuItem<String>> lista = new List();
    _poderes.forEach((poder){
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });

    return lista;
    
  }
}