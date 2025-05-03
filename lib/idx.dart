import 'package:flutter/material.dart';

class idx extends StatelessWidget {
  const idx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(253, 218, 255, 1), // Fondo azul
        centerTitle: true, // Texto centrado
        title: const Text('Index',
            style: TextStyle(
              color: Color(0xff000000), // Letra blanca
              fontSize: 20, // Tamaño 20
            )),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/video12');
              },
              child: const Text('Video 12'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/video13');
              },
              child: const Text('Video 13'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/video14');
              },
              child: const Text('Video 14'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/video15');
              },
              child: const Text('Video 15'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/video16');
              },
              child: const Text('Video 16'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/video17');
              },
              child: const Text('Video 17'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/video18');
              },
              child: const Text('Video 18'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/video19');
              },
              child: const Text('Video 19'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/video20');
              },
              child: const Text('Video 20'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/video21');
              },
              child: const Text('Video 21'),
            ),
          ),
        ],
      ),
    );
  }
}
