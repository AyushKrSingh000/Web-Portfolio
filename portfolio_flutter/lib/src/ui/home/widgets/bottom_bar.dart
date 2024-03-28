import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter/src/constants/colors.dart';
import 'package:portfolio_flutter/src/utils/color_utils.dart';

class CustomBottomBar extends ConsumerWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        color: ColorUtils.getColor(ref, explorerColor),
        border: Border(
          top: BorderSide(
              color: ColorUtils.getColor(ref, dividerColor), width: 0.3),
        ),
      ),
      height: 25,
      width: MediaQuery.sizeOf(context).width,
      child: Row(
        children: [
          const Icon(
            FontAwesomeIcons.gitAlt,
            color: Colors.grey,
            size: 18,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            'main',
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          const Icon(
            Icons.cancel_outlined,
            color: Colors.grey,
            size: 18,
          ),
          const SizedBox(
            width: 2,
          ),
          Text(
            '0',
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          const Icon(
            Icons.warning_amber,
            color: Colors.grey,
            size: 18,
          ),
          const SizedBox(
            width: 2,
          ),
          Text(
            '0',
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Expanded(child: SizedBox()),
          Image.asset(
            'assets/images/flutter.png',
            height: 15,
          ),
          if (MediaQuery.sizeOf(context).width > 410) ...[
            const SizedBox(
              width: 5,
            ),
            Text(
              'Powered by Flutter',
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
          const SizedBox(
            width: 15,
          ),
          const Icon(
            Icons.checklist,
            color: Colors.grey,
            size: 18,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            'Prettier',
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          const Icon(
            Icons.notifications_outlined,
            color: Colors.grey,
            size: 18,
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
