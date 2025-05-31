import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool notificationsEnabled = true;
  bool darkMode = false;
  double updateInterval = 5; // em minutos

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SwitchListTile(
            title: const Text('Notificações'),
            subtitle: const Text('Ativar alertas para novas rotas e mensagens'),
            value: notificationsEnabled,
            onChanged: (val) {
              setState(() {
                notificationsEnabled = val;
              });
            },
            activeColor: Colors.blue,
          ),
          SwitchListTile(
            title: const Text('Modo Escuro'),
            subtitle: const Text('Ativar tema escuro no app'),
            value: darkMode,
            onChanged: (val) {
              setState(() {
                darkMode = val;
              });
            },
            activeColor: Colors.blue,
          ),
          const SizedBox(height: 20),
          Text(
            'Intervalo de Atualização da Localização (minutos)',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Slider(
            min: 1,
            max: 30,
            divisions: 29,
            label: updateInterval.round().toString(),
            value: updateInterval,
            onChanged: (val) {
              setState(() {
                updateInterval = val;
              });
            },
            activeColor: Colors.blue,
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              // Salvar configurações ou aplicar
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Configurações salvas!')),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: const EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            ),
            child: const Text('Salvar Configurações'),
          ),
        ],
      ),
    );
  }
}
