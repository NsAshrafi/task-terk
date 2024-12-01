import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
                image: const DecorationImage(
              image: AssetImage('assets/img/back.jpg'),
              fit: BoxFit.cover,
            )),
            child: const Center(
              child: Text(
                'wellcome Nafiseh ...',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
        ));
  }
}
