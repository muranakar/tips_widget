import 'package:flutter/material.dart';

class TipFade extends StatefulWidget {
  const TipFade({super.key});

  @override
  _TipFadeState createState() => _TipFadeState();
}

class _TipFadeState extends State<TipFade> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeInAnimation;
  late Animation<double> _fadeOutAnimation;
  final List<String> _tips = [
    'This is a fade tip!',
    'Here is another fade tip!',
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
          _controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          setState(() {
            _currentTipIndex = (_currentTipIndex + 1) % _tips.length;
            _controller.forward();
          });
        }
      })
      ..forward();

    _fadeInAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
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
      appBar: AppBar(title: const Text('Fade Tip')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                double opacity;
                opacity = _fadeInAnimation.value;
                return Opacity(
                  opacity: opacity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(_tips[_currentTipIndex]),
                  ),
                );
              },
            ),
          ),
          Slider(
            value: _speed,
            min: 2.0,
            max: 8.0,
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
