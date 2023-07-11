import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';
import 'config/router/app_router.dart';
import 'config/theme/app_theme.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int selectedIndexColorProvider = ref.watch(selectedColorProvider);

    final bool isDarkMode = ref.watch(isDarkModeProvider);

    return MaterialApp.router(
      title: 'Flutter + Material 3',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(
              selectedColor: selectedIndexColorProvider, isDarkMode: isDarkMode)
          .getTheme(),
    );
  }
}
