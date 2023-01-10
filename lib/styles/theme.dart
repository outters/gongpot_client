import 'package:flutter/material.dart';

ThemeData get lightTheme => ThemeData(
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: const Color(0xff2962ff),
        onPrimary: Colors.white,
        secondary: const Color(0xff768fff),
        onSecondary: Colors.black,
        tertiary: const Color(0xff0039cb),
        onTertiary: Colors.black,
        error: Colors.red,
        onError: Colors.white,
        background: Colors.white,
        onBackground: Colors.black,
        surface: Colors.grey.shade600,
        onSurface: Colors.white,
      ),
    );
