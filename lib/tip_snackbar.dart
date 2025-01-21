import 'package:flutter/material.dart';

class TipSnackbar extends StatelessWidget {
  const TipSnackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tips Example 2')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackBar = SnackBar(
              content: const Text('This is a helpful tip!'),
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
