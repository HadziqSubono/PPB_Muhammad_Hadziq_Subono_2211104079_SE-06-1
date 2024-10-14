import 'package:flutter/material.dart';
import 'package:guided_4/gridview.dart';
import 'package:guided_4/listview.dart';
import 'package:guided_4/stack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: MyWidget(),
      // listviewscreen(),
      home: const stackscreen(),
    );
  }
}
