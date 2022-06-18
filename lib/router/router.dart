import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:toolbox/pages/home/index.dart';
import 'package:toolbox/pages/image/index.dart';
import 'package:toolbox/pages/index.dart';
import 'package:toolbox/pages/video/index.dart';

/// 全局路由[gRouter]
final GoRouter gRouter = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: "/",
      builder: (BuildContext context, GoRouterState state) => const IndexPage(),
    ),
  ],
);
