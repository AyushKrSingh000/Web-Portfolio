import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GitHubSection extends ConsumerStatefulWidget {
  const GitHubSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GitHubSectionState();
}

class _GitHubSectionState extends ConsumerState<GitHubSection> {
  @override
  Widget build(BuildContext context) {
    return const HtmlElementView(viewType: 'webpage');
  }
}
