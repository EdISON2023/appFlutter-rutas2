import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.blue, // Color azul del sidebar
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Menú',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Producto',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  // Lógica al seleccionar "Producto"
                },
              ),
              ListTile(
                title: Text(
                  'Nuevo Producto',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  // Lógica al seleccionar "Nuevo Producto"
                },
              ),
              ListTile(
                title: Text(
                  'Inventario',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  // Lógica al seleccionar "Inventario"
                },
              ),
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Spacer(),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Text('Ir al Login'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/registro');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Text('Ir al Registro'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
