import 'package:autismart/screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("home"),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            height: 40,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80),
                  bottomRight: Radius.circular(80),
                  bottomLeft: Radius.circular(60),
                  topRight: Radius.circular(180)),
              color: Color.fromARGB(255, 232, 92, 144),
            ),
            width: 40,
          ),
          Container(
            width: 49,
            height: 49,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80),
                  bottomRight: Radius.circular(80),
                  bottomLeft: Radius.circular(60),
                  topRight: Radius.circular(180)),
              color: Color.fromARGB(255, 93, 223, 174),
            ),
          ),
          Container(
            height: 40,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80),
                  bottomRight: Radius.circular(80),
                  bottomLeft: Radius.circular(60),
                  topRight: Radius.circular(180)),
              color: Color.fromARGB(255, 139, 4, 131), //rgba(139, 4, 131, 1)
            ),
            width: 40,
          ),
        ],
      ),
    );
  }
}
