import 'package:flutter/material.dart';
import 'package:toolbox/pages/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final String _title = "实用工具箱";

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.orange,
      ),
      home: SafeArea(
          top: false,
          right: false,
          bottom: false,
          child: IndexPage(
            title: _title,
          )),
    );
  }
}
