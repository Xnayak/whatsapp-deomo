import 'package:flutter/material.dart';

import 'WhatsApp.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsAApp",
      theme: ThemeData(primaryColor: Colors.teal[700]),
      home: WhatsApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
