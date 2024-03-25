import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

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
        color: const Color(0xff011627),
        border: Border(
          right: BorderSide(color: Colors.grey.withOpacity(0.5), width: 0.3),
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
              const FileNameSection(
                  fileName: 'home.jsx', image: "assets/images/vscode.png"),
              const SizedBox(
                height: 8,
              ),
              const FileNameSection(
                  fileName: 'about.html', image: "assets/images/vscode.png"),
              const SizedBox(
                height: 8,
              ),
              const FileNameSection(
                  fileName: 'contact.css', image: "assets/images/vscode.png"),
              const SizedBox(
                height: 8,
              ),
              const FileNameSection(
                  fileName: 'projects.js',
                  image: "assets/images/javascript.png"),
              const SizedBox(
                height: 8,
              ),
              const FileNameSection(
                  fileName: 'articles.json', image: "assets/images/vscode.png"),
              const SizedBox(
                height: 8,
              ),
              const FileNameSection(
                  fileName: 'github.md', image: "assets/images/vscode.png")
            ],
          ],
        ),
      ),
    );
  }
}

class FileNameSection extends ConsumerWidget {
  final String fileName;
  final String image;
  const FileNameSection({
    super.key,
    required this.fileName,
    required this.image,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
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
            color: Colors.white.withOpacity(0.7),
          ),
        )
      ],
    );
  }
}