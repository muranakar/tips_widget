import 'package:flutter/material.dart';

class TipsWidget4 extends StatelessWidget {
  const TipsWidget4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tips Example 4')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  padding: const EdgeInsets.all(16.0),
                  child: const Text('This is a helpful tip!'),
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
