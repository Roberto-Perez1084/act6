import 'package:flutter/material.dart';
// video 20

class V20 extends StatefulWidget {
  const V20({Key? key}) : super(key: key);

  @override
  State<V20> createState() => _V20State();
}

class _V20State extends State<V20> {
  double _size = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video 20'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(253, 218, 255, 1),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            _size = _size == 300 ? 100 : 300;
          });
        },
        child: Container(
          color: Colors.white,
          child: AnimatedSize(
            curve: Curves.easeIn,
            duration: const Duration(seconds: 1),
            child: FlutterLogo(size: _size),
          ),
        ),
      ),
    );
  }
}
