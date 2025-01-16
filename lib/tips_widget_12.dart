import 'package:flutter/material.dart';

class TipsWidget12 extends StatelessWidget {
  const TipsWidget12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tips Example 12')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  padding: const EdgeInsets.all(16.0),
                  child: const Text('This is another helpful tip!'),
                );
              },
            );
          },
          child: const Text('Show Tip'),
        ),
      ),
    );
  }
}
