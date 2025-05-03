import 'package:flutter/material.dart';
import 'package:myapp/idx.dart';
import 'package:myapp/video12.dart';
import 'package:myapp/video13.dart';
import 'package:myapp/video14.dart';
import 'package:myapp/video15.dart';
import 'package:myapp/video16.dart';
import 'package:myapp/video17.dart';
import 'package:myapp/video18.dart';
import 'package:myapp/video19.dart';
import 'package:myapp/video20.dart';
import 'package:myapp/video21.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        '/': (context) => const idx(),
        '/video12': (context) => const V12(),
        '/video13': (context) => const V13(),
        '/video14': (context) => const V14(),
        '/video15': (context) => const V15(),
        '/video16': (context) => const V16(),
        '/video17': (context) => const V17(),
        '/video18': (context) => const V18(),
        '/video19': (context) => const V19(),
        '/video20': (context) => const V20(),
        '/video21': (context) => const V21(),
      },
    );
  }
}
