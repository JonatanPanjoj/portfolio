import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        final size = MediaQuery.of(context).size;
        return (size.width > 920)
            ? const HomeScreenWeb()
            : const HomeScreenMobile();
      },
    ),
    GoRoute(
      path: '/contact',
      builder: (context, state) {
        return const ContactScreen();
      },
    ),
  ],
);
