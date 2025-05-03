import 'package:flutter/material.dart';

class V21 extends StatefulWidget {
  const V21({Key? key}) : super(key: key);

  @override
  State<V21> createState() => _V21State();
}

class _V21State extends State<V21> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video 21'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(253, 218, 255, 1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: Text(
                '$_count',
                style: const TextStyle(fontSize: 40),
                key: ValueKey(_count),
              ),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
            ),
            ElevatedButton(
              child: const Text('Remove'),
              onPressed: () {
                setState(() {
                  _count -= 1;
                });
              },
            ),
            ElevatedButton(
              child: const Text('Add'),
              onPressed: () {
                setState(() {
                  _count += 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
