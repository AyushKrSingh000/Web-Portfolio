import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_flutter/src/constants/enums.dart';
import 'package:portfolio_flutter/src/logic/repositories/theme_repository.dart';
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
    final appTheme =
        ref.watch(themeRepositoryProvider.select((value) => value));
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: appTheme == AppTheme.lightVSCode
          ? ThemeData.light()
          : ThemeData.dark(),
      title: 'Potfolio Web App',
      routerConfig: _appRouter.config(),
    );
  }
}
