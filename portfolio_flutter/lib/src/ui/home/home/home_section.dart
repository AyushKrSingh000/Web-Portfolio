import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeSection extends ConsumerStatefulWidget {
  const HomeSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeSectionState();
}

class _HomeSectionState extends ConsumerState<HomeSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [Text("AYUSH KUMAR SINGH")],
    );
  }
}
