import 'package:flutter/material.dart';
import 'package:responsive_whatsapp/responsive/resize.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Responsive(),
    );
  }
}

