import 'package:flutter/material.dart';
import 'package:toolbox/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final String _title = "实用工具箱";

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: gRouter.routeInformationParser,
      routerDelegate: gRouter.routerDelegate,
      routeInformationProvider: gRouter.routeInformationProvider,
      title: _title,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.green,
        fontFamily: "HanYi"
      ),
    );
  }
}
