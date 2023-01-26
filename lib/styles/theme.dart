import 'package:flutter/material.dart';

ThemeData get lightTheme => ThemeData(
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xff2962ff),
        onPrimary: Colors.white,
        secondary: Color(0xff768fff),
        onSecondary: Colors.black,
        tertiary: Color(0xff0039cb),
        onTertiary: Colors.black,
        error: Colors.red,
        onError: Colors.white,
        background: Colors.white,
        onBackground: Colors.black,
        surface: Colors.white,
        onSurface: Colors.black,
      ),
    );
