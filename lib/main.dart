import 'package:flutter/material.dart';
import 'package:gongpot/routes/routes.dart';
import 'package:gongpot/styles/theme.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();

  // runApp() 호출 전 Flutter SDK 초기화
  KakaoSdk.init(
    nativeAppKey: '7f2fdc980515ee168ff0ae10a288e7be',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: lightTheme,
    );
  }
}
