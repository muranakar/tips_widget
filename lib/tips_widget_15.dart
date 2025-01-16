import 'package:flutter/material.dart';

class TipsWidget15 extends StatelessWidget {
  const TipsWidget15({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tips Example 15')),
      body: Center(
        child: Tooltip(
          message: 'This is another helpful tip!',
          child: const Icon(Icons.info),
        ),
      ),
    );
  }
}
