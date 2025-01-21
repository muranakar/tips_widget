import 'package:flutter/material.dart';

class TipTooltip extends StatelessWidget {
  const TipTooltip({super.key});

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
