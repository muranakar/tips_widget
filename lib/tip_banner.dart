import 'package:flutter/material.dart';

class TipBanner extends StatelessWidget {
  const TipBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tips Example 5')),
      body: Center(
        child: Banner(
          message: 'Tip',
          location: BannerLocation.topEnd,
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('This is a helpful tip!'),
          ),
        ),
      ),
    );
  }
}
