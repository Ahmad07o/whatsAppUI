import 'package:flutter/material.dart';
import 'package:whatsapp_ui/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 154, 111, 227)),
        primarySwatch: Colors.blue,
      ),
      home: Homescreen(),
    );
  }
}
