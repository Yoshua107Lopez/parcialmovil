import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF000080), // Fondo azul marino
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //_buildStatusBar(),
              _buildHorizontalTextRow(),
              SizedBox(height: 10),
              Expanded(
                child: _buildListViewContainers(),
              ),
              SizedBox(height: 10),
              _buildButtonRow(),
              SizedBox(height: 10),
              _buildNavBar(),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

/*   //Widget _buildStatusBar() {
    return Container(
      width: 360,
      height: 24,
      color: Colors.white, // Contenedor blanco
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '10:30 AM',
            style: TextStyle(color: Colors.black),
          ),
          const Text(
            '80%',
            style: TextStyle(color: Colors.black),
          ),
          const Icon(
            Icons.wifi,
            color: Colors.black,
          ),
        ],
      ),
    );
  } */

  Widget _buildHorizontalTextRow() {
    return Container(
      width: double.infinity,
      height: 53,
      margin: const EdgeInsets.only(top: 44, left: 9),
      padding: const EdgeInsets.all(13),
      color: Colors.transparent, // Contenedor transparente
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Text(
              'Torneo Futbol 7 Mesoamericana',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Futbol 7',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListViewContainers() {
    return ListView.builder(
      itemCount: 3, // Número de contenedores desplazables
      itemBuilder: (BuildContext context, int index) {
        return _buildContainer('10 de Julio 2023', Colors.grey);
      },
    );
  }

  Widget _buildContainer(String text, Color color) {
    return Container(
      width: 336,
      height: 204,
      color: Colors.transparent,
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 336,
            height: 166,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              text,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtonRow() {
    return Container(
      width: 360,
      height: 87,
      color: Colors.white, // Contenedor transparente
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 100,
            height: 80,
            padding: const EdgeInsets.all(10),
            color: Colors.grey, // Color del primer botón
          ),
          Container(
            width: 100,
            height: 80,
            padding: const EdgeInsets.all(10),
            color: Colors.grey,
          ),
          Container(
            width: 100,
            height: 80,
            padding: const EdgeInsets.all(10),
            color: Colors.grey, // Color del tercer botón
          ),
        ],
      ),
    );
  }

  Widget _buildNavBar() {
    return Container(
      width: 360,
      height: 48,
      margin: const EdgeInsets.only(top: 10),
      color:
          const Color.fromARGB(255, 253, 253, 253), // Contenedor transparente
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey, // Color del botón central (circular)
            ),
          ),
          Container(
            width: 48,
            height: 48,
            color: Colors.grey, // Color del botón derecho (rectangular)
          ),
        ],
      ),
    );
  }
}
