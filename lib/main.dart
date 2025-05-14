import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MedBinyas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor:
            Colors.lightBlue[50], // Light blue background for all scaffolds
      ),
      home: const MyHomePage(title: 'MedBinyas'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.lightBlue[50], // Light blue app bar
        elevation: 0, // Removes shadow for cleaner look
      ),
      body: Container(
        color: Colors.lightBlue[50], // Lightest blue background
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png', height: 120, width: 120),
              const SizedBox(height: 20),
              const Text(
                'Welcome to MedBinyas!',
                style: TextStyle(
                  color: Color.fromARGB(
                    255,
                    36,
                    33,
                    33,
                  ), // Changed to blue for better visibility
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
