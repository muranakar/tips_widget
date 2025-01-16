import 'package:flutter/material.dart';

class TipsWidget3 extends StatelessWidget {
  const TipsWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tips Example 3')),
      body: Center(
        child: Tooltip(
          message: 'This is a helpful tip!',
          child: const Icon(Icons.info),
        ),
      ),
    );
  }
}
