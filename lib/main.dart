import 'package:gonzalez/pantallaini.dart';
import 'package:flutter/material.dart';
import 'package:gonzalez/clientes.dart';
import 'package:gonzalez/empleados.dart';
import 'package:gonzalez/pedidos.dart';
import 'package:gonzalez/productos.dart';
import 'package:gonzalez/proveedor.dart';

void main() => runApp(MiApp1222());

class MiApp1222 extends StatelessWidget {
  const MiApp1222({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => PantallaIni_1222(),
        "/Clientes": (context) => Clientes(),
        "/Empleados": (context) => Empleados(),
        "/Pedidos": (context) => Pedidos(),
        "/Productos": (context) => Productos(),
        "/Proveedor": (context) => Proveedor(),
      }, //Fin ruta paginas
    ); //Fin de material
  } //Fin widget
}
