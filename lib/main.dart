import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.yellow), // Theme
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Reefscape Scouting')),
        body: const Center(child: Text('Hello, World!')),
      ),
    ),
  );
}
