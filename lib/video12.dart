import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// video 12

class V12 extends StatefulWidget {
  const V12({Key? key}) : super(key: key);

  @override
  State<V12> createState() => _V12State();
}

class _V12State extends State<V12> with TickerProviderStateMixin {
  bool _isPlay = false;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video 12'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(253, 218, 255, 1),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              if (!_isPlay) {
                _controller.forward();
                _isPlay = true;
              } else {
                _controller.reverse();
                _isPlay = false;
              }
            });
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: _controller,
            size: 100,
          ),
        ),
      ),
    );
  }
}
