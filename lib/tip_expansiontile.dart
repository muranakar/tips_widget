import 'package:flutter/material.dart';

class TipExpansionTile extends StatelessWidget {
  const TipExpansionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tips Example 8')),
      body: Center(
        child: ExpansionTile(
          title: const Text('Tap to see the tip'),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: const Text('This is a helpful tip!'),
            ),
          ],
        ),
      ),
    );
  }
}
