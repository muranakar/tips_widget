import 'package:flutter/material.dart';

class TipAnimated extends StatefulWidget {
  const TipAnimated({super.key});

  @override
  _TipAnimatedState createState() => _TipAnimatedState();
}

class _TipAnimatedState extends State<TipAnimated>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;
  final List<String> _tips = [
    'This is an animated tip!',
    'Here is another tip!',
    'Keep learning Flutter!',
    'Animations make apps engaging!'
  ];
  int _currentTipIndex = 0;
  double _speed = 2.0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: _speed.toInt()),
      vsync: this,
    )
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          setState(() {
            _currentTipIndex = (_currentTipIndex + 1) % _tips.length;
            _controller.reset();
            _controller.forward();
          });
        }
      })
      ..forward();

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(2.0, 0.0),
      end: const Offset(-2.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Tip')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SlideTransition(
              position: _offsetAnimation,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(_tips[_currentTipIndex]),
              ),
            ),
          ),
          Slider(
            value: _speed,
            min: 2.0,
            max: 5.0,
            divisions: 9,
            label: 'Speed: ${_speed.toStringAsFixed(1)}s',
            onChanged: (value) {
              setState(() {
                _speed = value;
                _controller.duration = Duration(seconds: _speed.toInt());
              });
            },
          ),
        ],
      ),
    );
  }
}
