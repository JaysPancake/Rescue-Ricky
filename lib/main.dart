import 'package:flutter/material.dart';

void main() {
  runApp(const RescueRickyApp());
}

class RescueRickyApp extends StatelessWidget {
  const RescueRickyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rescue Ricky',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 243, 33, 226)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Sample list of tasks
  final List<String> tasks = const [
    'Record vehicle mileage',
    'Check oxygen tanks',
    'Inspect AED',
    'Restock trauma bag',
    'Clean stretcher',
    'Wash ambulance exterior',
    'Verify narc count',
    'Check fuel level',
    'Inspect suction unit',
    'Restock airway kit',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rescue Ricky Tasks'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: const Icon(Icons.assignment),
              title: Text(tasks[index]),
              subtitle: Text('Due: 07:00 AM'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                // For now, show a message when tapped
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Tapped: ${tasks[index]}')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
