import 'package:flutter/material.dart';
import 'package:gongpot/routes/routes.dart';
import 'package:gongpot/styles/theme.dart';

void main(List<String> args) {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: lightTheme,
    );
  }
}