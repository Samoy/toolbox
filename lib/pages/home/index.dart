import 'package:flutter/material.dart';
import 'package:toolbox/common/dimens.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("最近使用"),
      ),
      body: Container(
        padding: const EdgeInsets.all(normalPadding),
      ),
    );
  }
}
