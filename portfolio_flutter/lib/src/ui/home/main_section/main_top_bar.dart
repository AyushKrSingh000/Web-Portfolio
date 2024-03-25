import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_flutter/src/ui/home/home_page_model.dart';

class MainTopBar extends ConsumerStatefulWidget {
  const MainTopBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainTopBarState();
}

class _MainTopBarState extends ConsumerState<MainTopBar> {
  @override
  Widget build(BuildContext context) {
    final pages = ref.watch(homePageProvider.select((value) => value.pages));
    final pageId =
        ref.watch(homePageProvider.select((value) => value.selectedPage));
    return SizedBox(
      height: 40,
      child: Row(
        children: pages
            .map(
              (e) => Container(
                height: 40,
                decoration: BoxDecoration(
                  color: pageId == e.pageId
                      ? Colors.white.withOpacity(0.2)
                      : Colors.black,
                  border: Border(
                    right: BorderSide(
                      width: 0.5,
                      color: Colors.white.withOpacity(0.5),
                    ),
                    bottom: BorderSide(
                      width: 0.5,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
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
                      Icon(
                        Icons.close,
                        size: 18,
                        color: Colors.white.withOpacity(0.6),
                      ),
                    ],
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
