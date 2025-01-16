import 'package:flutter/material.dart';

class TipsWidget10 extends StatelessWidget {
  const TipsWidget10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tips Example 10')),
      body: DraggableScrollableSheet(
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            color: Colors.white,
            child: ListView.builder(
              controller: scrollController,
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return const ListTile(
                  title: Text('This is a helpful tip!'),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
