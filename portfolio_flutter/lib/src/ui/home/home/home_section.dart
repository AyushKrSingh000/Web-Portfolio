import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter/src/ui/widgets/circle_widget.dart';
import 'package:portfolio_flutter/src/ui/widgets/custom_button.dart';

import '../../../constants/enums.dart';
import '../../../logic/repositories/theme_repository.dart';
import '../../../models/page_data.dart';
import '../home_page_model.dart';

class HomeSection extends ConsumerStatefulWidget {
  const HomeSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeSectionState();
}

class _HomeSectionState extends ConsumerState<HomeSection> {
  @override
  Widget build(BuildContext context) {
    final appTheme =
        ref.watch(themeRepositoryProvider.select((value) => value)) ==
            AppTheme.lightVSCode;
    return Stack(
      children: [
        const _BuildLines(),
        Positioned(
          top: MediaQuery.sizeOf(context).height * 0.02,
          left: MediaQuery.sizeOf(context).width * .55,
          child: const CircleWidget(
            width: 90,
            height: 90,
            outerRadius: 80,
            innerRadius: 0,
            circleColor: Color(0xfff1fa8c),
          ),
        ),
        Positioned(
          top: MediaQuery.sizeOf(context).height * 0.25,
          left: (MediaQuery.sizeOf(context).width - 300) * .65,
          child: CircleWidget(
            width: 50,
            height: 50,
            outerRadius: 50,
            innerRadius: 0,
            circleColor:
                appTheme ? Colors.grey.shade200 : Colors.white.withOpacity(0.4),
          ),
        ),
        Positioned(
          top: 30,
          child: FittedBox(
            child: Text(
              "I BUILD",
              style: GoogleFonts.poppins(
                fontSize: 250 * MediaQuery.of(context).size.aspectRatio / 2,
                height: -1,
                color: appTheme
                    ? Colors.grey.shade200
                    : Colors.white.withOpacity(0.05),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Positioned(
          top: 250,
          child: FittedBox(
            child: Text(
              "APPS",
              style: GoogleFonts.poppins(
                fontSize: 150 * MediaQuery.of(context).size.aspectRatio / 1.5,
                height: 0,
                color: appTheme
                    ? Colors.grey.shade200
                    : Colors.white.withOpacity(0.05),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.sizeOf(context).height * 0.15,
          left: (MediaQuery.sizeOf(context).width - 300) * .70,
          child: CircleWidget(
            width: 300,
            height: 300,
            outerRadius: 300,
            innerRadius: 0,
            circleColor:
                appTheme ? Colors.grey.shade200 : Colors.white.withOpacity(0.3),
            child: Image.asset(
              'assets/images/ayush.png',
              height: 300,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                child: Text(
                  "Ayush Kumar ",
                  style: GoogleFonts.poppins(
                    fontSize: 60,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                "Singh",
                style: GoogleFonts.poppins(
                  fontSize: 50,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "App Developer",
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Flex(
                direction: MediaQuery.sizeOf(context).width > 450
                    ? Axis.horizontal
                    : Axis.vertical,
                children: [
                  CustomButton(
                    text: 'View Projects',
                    onTap: () {
                      ref.read(homePageProvider.notifier).addPage(
                            const PageData(
                              pageId: "4",
                              pageName: "projects.js",
                              pageIcon: 'assets/images/javascript.png',
                            ),
                          );
                    },
                    isProcessing: false,
                  ),
                  const SizedBox(
                    width: 20,
                    height: 20,
                  ),
                  CustomButton(
                    secondDesgin: true,
                    text: 'Resume',
                    onTap: () {},
                    isProcessing: false,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _BuildLines extends ConsumerWidget {
  const _BuildLines();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.sizeOf(context).width < 600
        ? MediaQuery.sizeOf(context).width - 60
        : MediaQuery.sizeOf(context).width - 300;
    return Row(
      children: [
        SizedBox(
          width: width / 4,
        ),
        Container(
          width: 2,
          height: double.maxFinite,
          color: Colors.black26,
          child: const VerticalDivider(
            color: Colors.black26,
          ),
        ),
        SizedBox(
          width: width / 4,
        ),
        Container(
          width: 2,
          height: double.maxFinite,
          color: Colors.black26,
          child: const VerticalDivider(
            color: Colors.black26,
          ),
        ),
        SizedBox(
          width: width / 4,
        ),
        Container(
          width: 2,
          height: double.maxFinite,
          color: Colors.black26,
          child: const VerticalDivider(
            color: Colors.black26,
          ),
        ),
        SizedBox(
          width: width / 4,
        ),
      ],
    );
  }
}
