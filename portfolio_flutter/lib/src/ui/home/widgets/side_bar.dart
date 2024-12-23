import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:portfolio_flutter/src/constants/enums.dart';
import 'package:portfolio_flutter/src/logic/repositories/theme_repository.dart';

import 'package:portfolio_flutter/src/utils/web_utils.dart';
import '../../../constants/colors.dart';
import '../../../models/page_data.dart';
import '../../../utils/color_utils.dart';
import '../home_page.dart';
import '../home_page_model.dart';

class CustomSideBar extends ConsumerStatefulWidget {
  const CustomSideBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CustomSideBarState();
}

class _CustomSideBarState extends ConsumerState<CustomSideBar> {
  @override
  Widget build(BuildContext context) {
    final selectedId =
        ref.watch(homePageProvider.select((value) => value.selectedPage));
    return Container(
      width: 50,
      decoration: BoxDecoration(
        color: ColorUtils.getColor(ref, sideBarColor),
        border: Border(
          right: BorderSide(
              color: ColorUtils.getColor(ref, dividerColor), width: 0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 5,
          ),
          SideBarIcon(
            data: FontAwesomeIcons.file,
            isActive: selectedId == "1",
            onTap: () {
              if (MediaQuery.sizeOf(context).width <= 600) {
                key.currentState?.openDrawer();
              } else {
                ref.read(homePageProvider.notifier).addPage(const PageData(
                      pageId: "1",
                      pageName: "home.html",
                      pageIcon: 'assets/images/html.png',
                    ));
              }
            },
          ),
          SideBarIcon(
            data: FontAwesomeIcons.github,
            isActive: false,
            onTap: () async {
              openUrl('https://github.com/AyushKrSingh000');
            },
          ),
          // SideBarIcon(
          //   data: FontAwesomeIcons.html5,
          //   isActive: false,
          //   onTap: () async {
          //     showSuccessMessage("Coming Soon!");
          //   },
          // ),
          // SideBarIcon(
          //   data: FontAwesomeIcons.pencilAlt,
          //   isActive: false,
          //   onTap: () async {},
          // ),
          SideBarIcon(
            data: FontAwesomeIcons.envelope,
            isActive: selectedId == "3",
            onTap: () {
              ref.read(homePageProvider.notifier).addPage(
                    const PageData(
                      pageId: "3",
                      pageName: "contact.css",
                      pageIcon: 'assets/images/css.png',
                    ),
                  );
            },
          ),
          const Expanded(child: SizedBox()),
          SideBarIcon(
              data: CupertinoIcons.person_alt_circle,
              isActive: false,
              iconSize: 32,
              onTap: () {
                ref.read(homePageProvider.notifier).addPage(const PageData(
                    pageId: "1",
                    pageName: "home.html",
                    pageIcon: 'assets/images/html.png'));
              }),
          SideBarIcon(
              data: Icons.settings_outlined,
              isActive: false,
              iconSize: 32,
              onTap: () {
                ref.read(homePageProvider.notifier).addPage(
                      const PageData(
                        pageId: "7",
                        pageName: "App Theme",
                        pageIcon: 'setting',
                      ),
                    );
              }),
        ],
      ),
    );
  }
}

class SideBarIcon extends ConsumerWidget {
  final IconData data;
  final VoidCallback onTap;
  final double iconSize;
  final bool isActive;
  const SideBarIcon({
    super.key,
    required this.data,
    required this.isActive,
    required this.onTap,
    this.iconSize = 25,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme =
        ref.watch(themeRepositoryProvider.select((value) => value)) ==
            AppTheme.lightVSCode;
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              hoverColor: appTheme
                  ? Colors.grey.shade200
                  : Colors.white.withOpacity(0.2),
              child: Icon(
                data,
                color: !isActive
                    ? Colors.grey
                    : appTheme
                        ? Colors.black
                        : Colors.white,
                size: iconSize,
              ),
            ),
          ),
        ),
        if (isActive)
          Container(
            height: 35,
            width: 2,
            color: appTheme ? Colors.black : Colors.white,
          ),
      ],
    );
  }
}
