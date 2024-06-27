import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Registro extends StatefulWidget {
  const Registro({super.key});

  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        key: _formkey,
        child: Form(
          
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              children: [
                Image.network(
                  "data:image/jpeg;base64,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",
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: 10,),
                Text(
                  " ir a registarse",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
            
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "nombre completo",
                      prefixIcon: const Icon(Icons.person),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                   ),
                ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "correo",
                      prefixIcon: const Icon(Icons.email),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                   ),
                ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "contraseña",
                      prefixIcon: const Icon(Icons.password),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                   ),
                ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "confirmar contraseña",
                      prefixIcon: const Icon(Icons.password_rounded),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                   ),
                ),
                ),
                SizedBox(height: 10,),
                
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(onPressed: (){}, child: const Text("registrar"),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                  )
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("tienes una cuenta?"),
                    TextButton(onPressed: (){}, child: Text("iniciar sesion",
                      style: TextStyle(color: Colors.blue),
                    )
                    )
                  ],
                )
                
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
