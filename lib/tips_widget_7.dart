import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TipsWidget7 extends StatelessWidget {
  const TipsWidget7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tips Example 7')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showCupertinoDialog(
              context: context,
              builder: (BuildContext context) {
                return CupertinoAlertDialog(
                  title: const Text('Tip'),
                  content: const Text('This is a helpful tip!'),
                  actions: <Widget>[
                    CupertinoDialogAction(
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
