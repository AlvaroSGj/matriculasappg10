import 'package:flutter/material.dart';

class ListileExample extends StatelessWidget {
  const ListileExample({super.key});

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
            ListTile(
              title: Text("Nombre"),
              subtitle: Text("Información adicional"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/4792/4792929.png"), //Colocando una imagen como leading
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                print("Esto es un ListTile");
              },
              contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10), //espaciado interno entre el contenido y el limite del tile
              tileColor: Colors.red, //color de fondo del tile
              selected: true,
              //selectedTileColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}