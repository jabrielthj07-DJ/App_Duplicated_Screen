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
                        "Jinotepe, Nicaragua",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 27),

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

                const SizedBox(height: 25),
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

              const SizedBox(height: 20),

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
  const SizedBox(height: 22),

                            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                  
                  const Text(
                    "producto Popular",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const Text(
                  "producto Tendencia",
                    style: TextStyle(
                      
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

  const SizedBox(height: 15),
// Tarjetas productos o comidas
              Row(
                children: [
                  Expanded(
                    child: _productCard(
                      "Pizza de Pepperoni",
                      "15 Mins",
                      "4.7",
                    ),
                  ),

 const SizedBox(width: 15),

                  Expanded(
                    child: _productCard(
                      "Hamburguesa con Queso",
                      "12 Mins",
                      "4.5",
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),
              
                  const Text(
                    "                  Oferta solo hoy ! -  50% de descuento",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

            ], // Fin de los widgets hijos de la columna convinada con rows
           
          ),
          
        ),
      ),

          // Barra inferior
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favoritos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: "Ordenar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Perfil",
          ),
        ],
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

  // Tarjeta de producto
  static Widget _productCard(
    String name,
    String time,
    String rating,
  ) {
    return Container(
      padding: const EdgeInsets.all(10),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 5,
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12),
            ),

            child: const Center(
              child: Icon(
                Icons.fastfood,
                size: 50,
              ),
            ),
          ),

          const SizedBox(height: 8),

          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 5),

          Text(
            "⏲ $time",
            style: const TextStyle(
              color: Color.fromARGB(255, 29, 77, 31),
              fontSize: 12,
            ),
          ),

          Text(
            "⭐ $rating",
            style: const TextStyle(
              fontSize: 12,
            ),
          ),

          const SizedBox(height: 5),

          const Text(
            "\C\$12.99",
            style: TextStyle(
              color: Color.fromARGB(255, 29, 77, 31),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

} // por si las moscas, aqui cierra la clase Homescren

