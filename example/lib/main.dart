import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaigi_plugin_a_2021/kaigi_plugin_a_2021.dart';
import 'package:kaigi_plugin_c_2021/kaigi_plugin_c_2021.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('kaigi plugin c 2021'),
        ),
        body: const ScreenName(),
      ),
    );
  }
}
