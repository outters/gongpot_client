import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gongpot/views/find_party/find_party.dart';
import 'package:gongpot/routes/paths.dart';
import 'package:gongpot/views/my_party/my_party.dart';
import 'package:gongpot/views/shell/shell.dart';

final GlobalKey<NavigatorState> rootNavKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> shellNavKey = GlobalKey<NavigatorState>();

GoRouter router = GoRouter(
  navigatorKey: rootNavKey,
  initialLocation: Paths.findParty,
  routes: [
    ShellRoute(
      navigatorKey: shellNavKey,
      routes: [
        GoRoute(
          path: Paths.findParty,
          pageBuilder: (context, state) => const NoTransitionPage(child: FindParty()),
        ),
        GoRoute(
          path: Paths.myParty,
          pageBuilder: (context, state) => const NoTransitionPage(child: MyParty()),
        )
      ],
      builder: (context, state, child) => Shell(state: state, child: child),
    ),
  ],
);
