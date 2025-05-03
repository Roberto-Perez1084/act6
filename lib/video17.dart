import 'package:flutter/material.dart';
// video 17

class V17 extends StatefulWidget {
  const V17({Key? key}) : super(key: key);

  @override
  State<V17> createState() => _V17State();
}

class _V17State extends State<V17> {
  bool _isFlat = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video 17'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(253, 218, 255, 1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AnimatedPhysicalModel(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              elevation: _isFlat ? 0 : 6.0,
              shape: BoxShape.rectangle,
              shadowColor: Colors.black,
              color: Colors.white,
              child: const SizedBox(
                height: 120.0,
                width: 120.0,
                child: Icon(Icons.android_outlined),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Click'),
              onPressed: () {
                setState(() {
                  _isFlat = !_isFlat;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
