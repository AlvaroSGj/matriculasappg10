import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, dynamic> persona1 = {
    "name": "Jhonny",
    "lastname": "Gallegos",
    "address": "Calle 123",
    "dni": "12345678",
    "nacionalidad": "Peruan@",
  };

  Map<String, dynamic> institucion1 = {
    "name": "Tecpsup",
    "direccion": "Calle lima 123",
    "ruc": "945609420",
    "matriculas": [],
  };

  Map<String, dynamic> matricula1 = {
    "date": "09/11/2024",
    "hour": "10:21",
    "studnet": {
      "name": "Jhonny",
      "lastname": "Gallegos",
      "address": "Calle 123",
      "dni": "12345678",
      "nacionalidad": "Peruan@",
    },
    "carrera": "diseño",
  };

  List<ListTile>personaListTile=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ficha de matrícula"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              personaListTile.add(
                ListTile(
           title: Text(
            "${persona1["name"]}"
            "${persona1["lastname"]}",
             ),
             subtitle: Text(
              "${persona1["address"]}-  "
               ),
            ),
            );
            setState(() {
              
            });

            }, child: Text("Agregar usuarios")),
           
            ...personaListTile
          ],
        ),
      ),
    );
  }
}
