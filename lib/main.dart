import 'package:flutter/material.dart';
import 'package:widjiwidji/views/home/homeView.dart';

void main() {
  runApp(WidjiWidji());
}

class WidjiWidji extends StatelessWidget {
  const WidjiWidji({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //showSemanticsDebugger: true,
      title: 'WidjiWidji',
      home: HomeView(),
    );
  }
}
