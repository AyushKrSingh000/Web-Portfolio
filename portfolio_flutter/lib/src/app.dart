import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'constants/enums.dart';
import 'constants/theme.dart';
import 'logic/repositories/theme_repository.dart';
import 'routing/router.dart';

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  late final AppRouter _appRouter;

  @override
  void initState() {
    super.initState();
    _appRouter = AppRouter();
  }

  @override
  void dispose() {
    super.dispose();
    _appRouter.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentThemeMode = ref.watch(
      themeRepositoryProvider.select(
        (appTheme) {
          switch (appTheme) {
            case AppTheme.light:
              return ThemeMode.light;
            case AppTheme.dark:
              return ThemeMode.dark;
            default:
              return ThemeMode.system;
          }
        },
      ),
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Potfolio Web App',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: currentThemeMode,
      routerConfig: _appRouter.config(),
    );
  }
}
