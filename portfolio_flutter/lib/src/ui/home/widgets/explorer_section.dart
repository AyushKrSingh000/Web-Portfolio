import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter/src/models/page_data.dart';
import 'package:portfolio_flutter/src/ui/home/home_page_model.dart';

import '../../../constants/colors.dart';
import '../../../utils/color_utils.dart';

class ExplorerSection extends ConsumerStatefulWidget {
  const ExplorerSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ExplorerSectionState();
}

class _ExplorerSectionState extends ConsumerState<ExplorerSection> {
  bool isHidden = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        color: ColorUtils.getColor(ref, explorerColor),
        border: Border(
          right: BorderSide(
              color: ColorUtils.getColor(ref, dividerColor), width: 0.3),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "EXPLORER",
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Icon(
                  Icons.more_horiz,
                  color: Colors.grey,
                  size: 19,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                if (mounted) {
                  setState(() {
                    isHidden = !isHidden;
                  });
                }
              },
              child: Row(
                children: [
                  Transform.rotate(
                    angle: !isHidden ? 1.55 : 0,
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "PORTFOLIO",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            if (!isHidden) ...[
              FileNameSection(
                  onTap: () {
                    ref.read(homePageProvider.notifier).addPage(const PageData(
                        pageId: "1",
                        pageName: "home.jsx",
                        pageIcon: 'assets/images/react.png'));
                    canPop(context);
                  },
                  fileName: 'home.jsx',
                  image: "assets/images/react.png"),
              const SizedBox(
                height: 8,
              ),
              FileNameSection(
                  onTap: () {
                    ref.read(homePageProvider.notifier).addPage(const PageData(
                        pageId: "2",
                        pageName: "about.html",
                        pageIcon: 'assets/images/html.png'));
                    canPop(context);
                  },
                  fileName: 'about.html',
                  image: "assets/images/html.png"),
              const SizedBox(
                height: 8,
              ),
              FileNameSection(
                  onTap: () {
                    ref.read(homePageProvider.notifier).addPage(const PageData(
                          pageId: "3",
                          pageName: "contact.css",
                          pageIcon: 'assets/images/css.png',
                        ));
                    canPop(context);
                  },
                  fileName: 'contact.css',
                  image: "assets/images/css.png"),
              const SizedBox(
                height: 8,
              ),
              FileNameSection(
                  onTap: () {
                    ref.read(homePageProvider.notifier).addPage(const PageData(
                          pageId: "4",
                          pageName: "projects.js",
                          pageIcon: 'assets/images/javascript.png',
                        ));
                    canPop(context);
                  },
                  fileName: 'projects.js',
                  image: "assets/images/javascript.png"),
              const SizedBox(
                height: 8,
              ),
              // FileNameSection(
              //     onTap: () {
              //       ref.read(homePageProvider.notifier).addPage(const PageData(
              //             pageId: "5",
              //             pageName: "articles.json",
              //             pageIcon: 'assets/images/json.png',
              //           ));
              //       canPop(context);
              //     },
              //     fileName: 'articles.json',
              //     image: "assets/images/json.png"),
              // const SizedBox(
              //   height: 8,
              // ),
              FileNameSection(
                  onTap: () {
                    ref.read(homePageProvider.notifier).addPage(const PageData(
                          pageId: "6",
                          pageName: "github.md",
                          pageIcon: 'assets/images/markdown.png',
                        ));
                    canPop(context);
                  },
                  fileName: 'github.md',
                  image: "assets/images/markdown.png")
            ],
          ],
        ),
      ),
    );
  }

  void canPop(BuildContext context) {
    if (MediaQuery.sizeOf(context).width <= 600) {
      context.maybePop();
    }
  }
}

class FileNameSection extends ConsumerWidget {
  final String fileName;
  final String image;
  final VoidCallback? onTap;
  const FileNameSection({
    super.key,
    required this.fileName,
    required this.image,
    this.onTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Image.asset(
            image,
            height: 12,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            fileName,
            style: GoogleFonts.poppins(
              fontSize: 13.5,
              color: ColorUtils.getColor(ref, explorerTextColor),
            ),
          )
        ],
      ),
    );
  }
}
