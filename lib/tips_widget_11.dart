import 'package:flutter/material.dart';

class TipsWidget11 extends StatelessWidget {
  const TipsWidget11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tips Example 11')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackBar = SnackBar(
              content: const Text('This is another helpful tip!'),
              action: SnackBarAction(
                label: 'OK',
                onPressed: () {},
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text('Show Tip'),
        ),
      ),
    );
  }
}
