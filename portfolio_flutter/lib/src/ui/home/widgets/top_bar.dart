import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants/colors.dart';

import '../../../constants/constants.dart';
import '../../../utils/color_utils.dart';

class CustomTabBar extends ConsumerStatefulWidget {
  const CustomTabBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends ConsumerState<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff011627),
        border: Border(
          bottom: BorderSide(color: Colors.grey.withOpacity(0.5), width: 0.3),
        ),
      ),
      height: 35,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 6, 10, 6),
            child: Image.asset(
              'assets/images/vscode.png',
              height: 40,
              // width: 40,
            ),
          ),
          if (MediaQuery.sizeOf(context).width > 500)
            ...webOptions.map(
              (e) => Material(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: InkWell(
                    hoverColor: Colors.grey.withOpacity(0.2),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        e.values.first,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          if (MediaQuery.sizeOf(context).width > 910)
            const SizedBox(
              width: 100,
            ),
          if (MediaQuery.sizeOf(context).width > 810)
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white.withOpacity(0.5),
                    width: 1.5,
                  ),
                  color: ColorUtils.getColor(context, containerColor)
                      .withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search,
                      size: 16,
                    ),
                    Text("Ayush-Portfolio"),
                  ],
                ),
              ),
            ),
          const Expanded(child: SizedBox()),
          OnOffButton(
            icon: Icons.minimize_sharp,
            onTap: () {},
          ),
          OnOffButton(
            icon: Icons.square_outlined,
            onTap: () {},
          ),
          OnOffButton(
            icon: Icons.close,
            backgroundColor: Colors.red,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class OnOffButton extends ConsumerWidget {
  final IconData icon;
  final Color? backgroundColor;
  final VoidCallback onTap;
  const OnOffButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      color: Colors.transparent,
      child: Center(
        child: SizedBox(
          width: 35,
          height: 35,
          child: InkWell(
            hoverColor: backgroundColor ?? Colors.grey.withOpacity(0.2),
            onTap: onTap,
            child: Icon(
              icon,
              size: 18,
            ),
          ),
        ),
      ),
    );
  }
}
