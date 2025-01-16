import 'package:flutter/material.dart';

class TipsWidget6 extends StatelessWidget {
  const TipsWidget6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tips Example 6')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Text('This is a helpful tip!'),
                        const SizedBox(height: 16.0),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  ),
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
