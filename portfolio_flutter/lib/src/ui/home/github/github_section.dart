import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/enums.dart';
import '../../../logic/repositories/theme_repository.dart';

class GitHubSection extends ConsumerStatefulWidget {
  const GitHubSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GitHubSectionState();
}

class _GitHubSectionState extends ConsumerState<GitHubSection> {
  @override
  Widget build(BuildContext context) {
    final appTheme =
        ref.watch(themeRepositoryProvider.select((value) => value)) ==
            AppTheme.lightVSCode;
    return appTheme
        ? const HtmlElementView(viewType: 'webpage')
        : const HtmlElementView(viewType: 'webpage2');
  }
}
