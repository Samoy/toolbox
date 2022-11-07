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
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        useMaterial3: true,
        fontFamily: "HanYi",
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme:
            Theme.of(context).bottomNavigationBarTheme.copyWith(
                  backgroundColor: Colors.white,
                ),
      ),
    );
  }
}
