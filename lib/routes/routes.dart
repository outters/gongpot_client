import 'package:go_router/go_router.dart';
import 'package:gongpot/pages/home/home.dart';
import 'package:gongpot/routes/paths.dart';

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: Paths.main,
      builder: (context, state) => const Home(),
    )
  ],
);
