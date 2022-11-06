import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:toolbox/pages/index.dart';

/// 全局路由[router]
final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: "/",
      builder: (BuildContext context, GoRouterState state) => const IndexPage(),
    ),
  ],
);
