import 'package:flutter/material.dart';
import 'package:flutter_mercadopago_interfaz/home.dart';
import 'package:flutter_mercadopago_interfaz/registro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Home(),
      home: Registro(),
      routes: {
        "/registro":(context) => Registro(), 
        "/home":(context) => Home() 
      },

    );
  }
}
