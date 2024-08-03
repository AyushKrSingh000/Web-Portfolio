import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_flutter/src/constants/colors.dart';
import 'package:portfolio_flutter/src/ui/home/home_page_model.dart';

import '../../../constants/enums.dart';
import '../../../logic/repositories/theme_repository.dart';
import '../../../utils/color_utils.dart';

class MainTopBar extends ConsumerStatefulWidget {
  const MainTopBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainTopBarState();
}

class _MainTopBarState extends ConsumerState<MainTopBar> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    final pages = ref.watch(homePageProvider.select((value) => value.pages));
    final pageId =
        ref.watch(homePageProvider.select((value) => value.selectedPage));
    final appTheme =
        ref.watch(themeRepositoryProvider.select((value) => value)) ==
            AppTheme.lightVSCode;
    return SizedBox(
      height: 40,
      child: RawScrollbar(
        controller: _scrollController,
        child: SingleChildScrollView(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: pages
                .map(
                  (e) => InkWell(
                    onTap: () {
                      ref.read(homePageProvider.notifier).addPage(e);
                    },
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: pageId == e.pageId
                            ? Colors.white.withOpacity(0.2)
                            : ColorUtils.getColor(ref, mainTopBarColor),
                        border: Border(
                          right: BorderSide(
                            width: 0.5,
                            color: ColorUtils.getColor(ref, dividerColor),
                          ),
                          bottom: BorderSide(
                            width: 0.7,
                            color: ColorUtils.getColor(ref, dividerColor),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            e.pageIcon == 'setting'
                                ? const Icon(
                                    Icons.settings,
                                    color: Colors.grey,
                                  )
                                : Image.asset(
                                    e.pageIcon,
                                    width: 14,
                                  ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(e.pageName),
                            const SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onTap: () {
                                ref
                                    .read(homePageProvider.notifier)
                                    .removePage(e.pageId);
                              },
                              child: Icon(
                                Icons.close,
                                size: 18,
                                color: appTheme
                                    ? Colors.grey.shade500
                                    : ColorUtils.getColor(ref, buttonColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
