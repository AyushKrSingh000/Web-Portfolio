import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../routing/router.dart';

@RoutePage()
class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  bool isChanged = true;
  late final Timer timer;
  @override
  void initState() {
    _navigateAfterDelay();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  _navigateAfterDelay() async {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    context.replaceRoute(HomeRoute());
  }
}
