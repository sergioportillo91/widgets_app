import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../presentation/screens/screens.dart';

/// The route configuration.
final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'buttons',
          name: ButtonsScreen.name,
          builder: (BuildContext context, GoRouterState state) {
            return const ButtonsScreen();
          },
        ),
        GoRoute(
          path: 'cards',
          name: CardsScreen.name,
          builder: (BuildContext context, GoRouterState state) {
            return const CardsScreen();
          },
        ),
        GoRoute(
          path: 'progress',
          name: ProgressIndicatosScreen.name,
          builder: (BuildContext context, GoRouterState state) {
            return const ProgressIndicatosScreen();
          },
        ),
        GoRoute(
          path: 'snackbars',
          name: SnackbarScreen.name,
          builder: (BuildContext context, GoRouterState state) {
            return const SnackbarScreen();
          },
        ),
        GoRoute(
          path: 'animatedContainer',
          name: AnimatedScreen.name,
          builder: (BuildContext context, GoRouterState state) {
            return const AnimatedScreen();
          },
        ),
        GoRoute(
          path: 'ui-controls',
          name: UIControlsScreen.name,
          builder: (BuildContext context, GoRouterState state) {
            return const UIControlsScreen();
          },
        ),
        GoRoute(
          path: 'tutorial',
          name: AppTutorialScreen.name,
          builder: (BuildContext context, GoRouterState state) {
            return const AppTutorialScreen();
          },
        ),
        GoRoute(
          path: 'infinitescroll',
          name: InfiniteScrollScreen.name,
          builder: (BuildContext context, GoRouterState state) {
            return const InfiniteScrollScreen();
          },
        ),
        GoRoute(
          path: 'counter',
          name: CounterScreen.name,
          builder: (BuildContext context, GoRouterState state) {
            return const CounterScreen();
          },
        ),
        GoRoute(
          path: 'theme_changer',
          name: ThemeChangerScreen.name,
          builder: (BuildContext context, GoRouterState state) {
            return const ThemeChangerScreen();
          },
        ),
      ],
    ),
  ],
);
