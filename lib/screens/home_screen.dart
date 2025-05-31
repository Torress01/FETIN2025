import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mapa de Ônibus")),
      body: const Center(child: Text("[Mapa com localização dos ônibus aqui]")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.gps_fixed),
      ),
    );
  }
}
