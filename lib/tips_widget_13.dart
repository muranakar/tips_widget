import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TipsWidget13 extends StatelessWidget {
  const TipsWidget13({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tips Example 13')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) {
                return CupertinoActionSheet(
                  title: const Text('Tip'),
                  message: const Text('This is another helpful tip!'),
                  actions: <CupertinoActionSheetAction>[
                    CupertinoActionSheetAction(
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
