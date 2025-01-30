import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TaskTerk',
          style: TextStyle(fontFamily: 'Billabong', 
            fontSize: 32,
            fontWeight: FontWeight.bold,
            ),
        ),
      ),
    );
  }
}