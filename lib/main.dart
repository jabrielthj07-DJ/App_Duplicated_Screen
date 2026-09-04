import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(home: HomeScreen(), ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Ubicación
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor:
                        const Color.fromARGB(255, 238, 237, 237),
                    child: const Icon(Icons.location_on_outlined),
                  ),

                  const SizedBox(width: 10),

                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ubicacion Actual",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),

                      Text(
                        "Managua Nicaragua",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Buscador
              TextField(
                decoration: InputDecoration(
                  hintText: "Buscar",
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor:
                      const Color.fromARGB(255, 255, 247, 247),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
                Row(
                children: [
                  _category("Comidas", true), // _category es un metodo que tenemos abajo de categorias
                  _category("Bebidas", false),
                  _category("Accesorios", false),
                ],
              ),

              const SizedBox(height: 26),

              const Text(
                "Comidas Populares",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

                            // Tipos de comida
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _foodIcon(Icons.local_dining, "Postres"),
                  _foodIcon(Icons.icecream, "Helado"),
                  _foodIcon(Icons.local_pizza, "Pizza"),
                  _foodIcon(Icons.coffee, "Café"),
                  _foodIcon(Icons.lunch_dining, "Hamburguesa"),
                ],
              ),

                            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Articulo Popular",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const Text(
                    "Articulo en Tendencia",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),


            ],
           
          ),
          
        ),
      ),
    );

  }


// Metodos para crear los widgets de categorias y comida, proximamente tarjetas

// Categorías
    static Widget _category(String text, bool selected) {
    return Container(
      margin: const EdgeInsets.only(right: 7), // Espaciado entre las catgeorias

      padding: const EdgeInsets.symmetric( // tama;o del espacio osea dentro del contenedor
        horizontal: 12, 
        vertical: 8,
      ),

      decoration: BoxDecoration(
        color: selected ? Colors.green : Colors.white, // Recordar cambiar con el original, paleta igual

        borderRadius: BorderRadius.circular(22),

        border: Border.all(
          color: Colors.grey.shade400,
        ),
      ),

      child: Text(
        text,
        style: TextStyle(
          color: selected ? Colors.white : Colors.black, // Cuando selecionan se pone blanco y cuando no se pone negro...
        ),
      ),
    );
  }

  // Iconos de comida
  static Widget _foodIcon(IconData icon, String text) {
    return Column(
      children: [
        Icon(
          icon,
          size: 30,
        ),

        const SizedBox(height: 5),

        Text(
          text,
          style: const TextStyle(
            fontSize: 11,
          ),
        ),
      ],
    );
  }

}

