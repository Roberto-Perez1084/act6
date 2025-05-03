import 'package:flutter/material.dart';
// video 19

class V19 extends StatefulWidget {
  const V19({Key? key}) : super(key: key);

  @override
  State<V19> createState() => _V19State();
}

class _V19State extends State<V19> {
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video 19'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(253, 218, 255, 1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50),
              child: AnimatedRotation(
                turns: turns,
                duration: const Duration(seconds: 1),
                child: const FlutterLogo(
                  size: 100,
                ),
              ),
            ),
            ElevatedButton(
              child: const Text('Rotate Logo'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
              ),
              onPressed: () {
                setState(() => turns += 1 / 4);
              },
            ),
          ],
        ),
      ),
    );
  }
}
