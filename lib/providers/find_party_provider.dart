import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

class FindPartyProvider extends ChangeNotifier {
  final int duration = 10;
  int currentTimer = 0;

  Future<bool> findParty() async {
    currentTimer = duration;
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (currentTimer == 0) {
        timer.cancel();
        return;
      }

      currentTimer--;
      notifyListeners();
    });

    await Future.delayed(Duration(seconds: duration));
    return Random().nextBool();
  }

  Future<void> joinParty() async {
    await Future.delayed(const Duration(seconds: 2));
  }

  Future<void> createParty() async {
    await Future.delayed(const Duration(seconds: 2));
  }
}
