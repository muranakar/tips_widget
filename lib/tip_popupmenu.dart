import 'package:flutter/material.dart';

class TipPopupMenu extends StatelessWidget {
  const TipPopupMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tips Example 9')),
      body: Center(
        child: PopupMenuButton<String>(
          onSelected: (String result) {},
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: 'Tip',
              child: Text('This is a helpful tip!'),
            ),
          ],
          child: const Text('Show Tip'),
        ),
      ),
    );
  }
}
