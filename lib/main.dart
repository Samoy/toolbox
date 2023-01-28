import 'package:flutter/material.dart';
import 'package:toolbox/router/router.dart';
import 'common/color_schemes.g.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final String _title = "实用工具箱";

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      colorScheme: lightColorScheme,
      fontFamily: "HanYi",
    );
    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      title: _title,
      theme: lightTheme,
      darkTheme: lightTheme.copyWith(
        colorScheme: darkColorScheme,
      ),
    );
  }
}
