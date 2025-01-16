import 'package:flutter/material.dart';

class TipsWidget1 extends StatelessWidget {
  const TipsWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tips Example 1')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Tip'),
                  content: const Text('This is a helpful tip!'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK'),
                    ),
                  ],
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
