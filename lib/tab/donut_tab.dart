import 'package:flutter/material.dart';
import 'package:donut/utils/donut_tile.dart';

class DonutTab extends StatelessWidget {

//lista de donas
final List donasventa  = [
  //donasabor
  //donapresio
  //donacolor
  //donaimagen
  //donaproveedor
  ['chocolate', '100', Colors.brown, "lib/images/chocolate_donut.png", 'Starbucks'],
  ['fresa', '120', Colors.pink, "lib/images/strawberry_donut.png", 'Starbucks'],
  ['vainilla', '90', Colors.yellow, "lib/images/icecream_donut.png", 'Starbucks'],
  ['matcha', '150', Colors.green, "lib/images/grape_donut.png", 'Starbucks'],
];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //se encarga de acomodar elementos dentro de un grid
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //numero de columnas
        crossAxisCount: 2,
        childAspectRatio: 1/1.4,
      ),
      itemCount: donasventa.length,
        //relacion de aspecto
        
        //lo que se va a construir en el grid
      itemBuilder: (context, index) {
        return DonutTile(
          sabordona: donasventa[index][0],
          donaprecio: donasventa[index][1],
          donacolor: donasventa[index][2],
          donaimagen: donasventa[index][3],
          donaproveedor: donasventa[index][4],
          );
  }
  );
}}