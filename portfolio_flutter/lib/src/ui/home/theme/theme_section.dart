// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:portfolio_flutter/src/constants/colors.dart';
import 'package:portfolio_flutter/src/utils/color_utils.dart';

import '../../../constants/enums.dart';
import '../../../logic/repositories/theme_repository.dart';

import '../home_page_model.dart';

class ThemeSection extends ConsumerStatefulWidget {
  const ThemeSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ThemeSectionState();
}

class _ThemeSectionState extends ConsumerState<ThemeSection> {
  final _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      ref.read(homePageProvider.notifier).fetchProjects();
    });
  }

  @override
  Widget build(BuildContext context) {
    final appTheme =
        ref.watch(themeRepositoryProvider.select((value) => value));
    return RawScrollbar(
      controller: _scrollController,
      thickness: 10,
      radius: const Radius.circular(20),
      thumbColor: Colors.white.withOpacity(0.5),
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
          child: Center(
            child: Wrap(
                spacing: 30,
                runSpacing: 30,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: AppTheme.values
                    .map((e) => _ThemeCard(
                          theme: e,
                          isSelected: appTheme == e,
                        ))
                    .toList()),
          ),
        ),
      ),
    );
  }
}

class _ThemeCard extends ConsumerWidget {
  final AppTheme theme;
  final bool isSelected;
  const _ThemeCard({
    required this.theme,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme =
        ref.watch(themeRepositoryProvider.select((value) => value));
    return SizedBox(
      width: 260,
      child: Column(
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: ColorUtils.getColor(ref, projectBgColor).withBlue(10),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            theme.name,
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () {
              ref.read(themeRepositoryProvider.notifier).setAppTheme(theme);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: ColorUtils.getColor(ref, buttonColor),
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(isSelected ? "Selected" : "Select App Theme",
                    style: GoogleFonts.poppins(
                        color: [AppTheme.dobriNext, AppTheme.lightVSCode]
                                .contains(appTheme)
                            ? Colors.black
                            : Colors.white)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
