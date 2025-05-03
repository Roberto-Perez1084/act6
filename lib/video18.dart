import 'package:flutter/material.dart';
// video 18

class V18 extends StatefulWidget {
  const V18({Key? key}) : super(key: key);

  @override
  State<V18> createState() => _V18State();
}

class _V18State extends State<V18> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video 18'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(253, 218, 255, 1),
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          height: 350,
          child: Stack(
            children: <Widget>[
              AnimatedPositioned(
                width: selected ? 200.0 : 50.0,
                height: selected ? 50.0 : 200.0,
                top: selected ? 50.0 : 150.0,
                duration: const Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = !selected;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
