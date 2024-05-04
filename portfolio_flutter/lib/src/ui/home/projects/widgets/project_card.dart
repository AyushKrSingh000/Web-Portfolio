import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:portfolio_flutter/src/constants/colors.dart';

import 'package:portfolio_flutter/src/utils/color_utils.dart';
import 'package:portfolio_flutter/src/utils/web_utils.dart';

import '../../../../models/project_data.dart';

class ProjectCard extends ConsumerWidget {
  final ProjectData data;
  final List<String> links;
  const ProjectCard({
    super.key,
    required this.data,
    required this.links,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: MediaQuery.sizeOf(context).width < 880 &&
                MediaQuery.sizeOf(context).width > 580
            ? 230
            : 270,
        color: ColorUtils.getColor(ref, projectBgColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    data.projectName,
                    style: GoogleFonts.nunitoSans(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: ColorUtils.getColor(ref, projectTextColor)),
                  ),
                  Text(
                    data.desc,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      color: ColorUtils.getColor(ref, projectTextColor)
                          .withOpacity(0.6),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    spacing: 10,
                    runSpacing: 5,
                    children: List.from(
                      List.generate(
                        data.techStacks.length,
                        (index) => InkWell(
                          onTap: () {
                            openUrl(links[index]);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: ColorUtils.getColor(ref, buttonColor),
                                width: 0.7,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 2),
                              child: Text(
                                data.techStacks[index],
                                style: GoogleFonts.poppins(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w300,
                                  // color:  Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ).toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Material(
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          hoverColor: Colors.white.withOpacity(0.3),
                          onTap: () {},
                          child: Text(
                            "Source Code",
                            style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              decoration: TextDecoration.underline,
                              // color: Colors.white,
                            ),
                          ),
                        ),
                        InkWell(
                          hoverColor: Colors.white.withOpacity(0.3),
                          onTap: () {},
                          child: Text(
                            "Live Demo",
                            style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              decoration: TextDecoration.underline,
                              // color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
