
import 'package:flutter/material.dart';
import 'package:flutter_mercadopago_interfaz/datos_de_categoria.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.blue[400],
        title: 
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("mercado libre"), 
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, "/inicio");
              },
              child: Text("iniciar secion "),
              style: ElevatedButton.styleFrom( 
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                backgroundColor: Colors.white,
                foregroundColor: Colors.lightBlue 
                ), 
              )  
            ],
          ),
        ) ,
      ),
      body: Padding(padding: EdgeInsets.all(0.0),
      child:
        Column(
          children: [
            Row(
              children: [
                Expanded(child: 
                  TextField(decoration: 
                    InputDecoration(
                      prefixIcon: Icon(Icons.search),hintText: "buscar", 
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none), filled: true, fillColor: Colors.grey
                    ),
                  )
                ),
                SizedBox(width: 10),
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border), ),
                IconButton(onPressed: (){}, icon: Icon(Icons.notifications), )
            ],
          ),
          Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 1.0,
                ),
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: InkWell(
                      onTap: () {
                        print('seleccionado ${categories[index]['titulo']}');
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(categories[index]['icono'], size: 50.0),
                          const SizedBox(height: 10.0),
                          Text(
                            categories[index]['titulo'],
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
        ],)
      ),
      
    );
  }
}




// final List<Map<String, dynamic>> categories = [
//   {'codigo': '001', 'icono': Icons.home,          'titulo': 'Hogar y muebles'},
//   {'codigo': '002', 'icono': Icons.phone_android, 'titulo': 'Celulares'},
//   {'codigo': '003', 'icono': Icons.checkroom,     'titulo': 'Ropa y accesorios'},
//   {'codigo': '004', 'icono': Icons.computer,      'titulo': 'Computación'},
//   {'codigo': '005', 'icono': Icons.kitchen,       'titulo': 'Electro Hogar'},
//   {'codigo': '006', 'icono': Icons.sports_soccer, 'titulo': 'Deportes'},
//   {'codigo': '007', 'icono': Icons.build,         'titulo': 'Herramientas'},
//   {'codigo': '008', 'icono': Icons.brush,         'titulo': 'Belleza'},
//   {'codigo': '009', 'icono': Icons.tv,            'titulo': 'Electrónica y audio'},
//   {'codigo': '010', 'icono': Icons.fastfood,      'titulo': 'Alimentos y bebidas'},
//   {'codigo': '011', 'icono': Icons.pets,          'titulo': 'Animales y mascotas'},
// ];

