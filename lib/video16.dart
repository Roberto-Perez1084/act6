import 'package:flutter/material.dart';
// video 16

class V16 extends StatefulWidget {
  const V16({Key? key}) : super(key: key);

  @override
  State<V16> createState() => _V16State();
}

class _V16State extends State<V16> {
  double padValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video 16'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(253, 218, 255, 1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent),
              child: const Text('Change padding'),
              onPressed: () {
                setState(() {
                  padValue = padValue == 0.0 ? 100.0 : 0.0;
                });
              },
            ),
            Text('Padding = $padValue'),
            AnimatedPadding(
              padding: EdgeInsets.all(padValue),
              duration: const Duration(seconds: 2),
              curve: Curves.easeInOut,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                color: Colors.orangeAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
