import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticlesSection extends ConsumerStatefulWidget {
  const ArticlesSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ArticlesSectionState();
}

class _ArticlesSectionState extends ConsumerState<ArticlesSection> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Coming Soon!",
        style: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
