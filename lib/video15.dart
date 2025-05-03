import 'package:flutter/material.dart';
// video 15

class V15 extends StatefulWidget {
  const V15({Key? key}) : super(key: key);

  @override
  State<V15> createState() => _V15State();
}

class _V15State extends State<V15> {
  double opacitylevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video 15'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(253, 218, 255, 1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AnimatedOpacity(
              opacity: opacitylevel,
              duration: const Duration(seconds: 1),
              child: const FlutterLogo(size: 50),
            ),
            ElevatedButton(
              child: const Text('Fade Logo'),
              onPressed: () {
                setState(() => opacitylevel = opacitylevel == 0 ? 1.0 : 0.0);
              },
            ),
          ],
        ),
      ),
    );
  }
}
