import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter/src/constants/strings.dart';
import 'package:portfolio_flutter/src/utils/web_utils.dart';

class ContactSection extends ConsumerStatefulWidget {
  const ContactSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ContactSectionState();
}

class _ContactSectionState extends ConsumerState<ContactSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(height: 50),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Reach Out Via Socials",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: const Color(0xff89a4bb)),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Text(
                      "1",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: const Color(0xff89a4bb).withOpacity(0.3)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      ".socials   {",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          color: const Color(0xff89a4bb)),
                    )
                  ],
                ),
                for (int i = 0; i < socials.length; i++)
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Text(
                          (i + 1).toString(),
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: const Color(0xff89a4bb).withOpacity(0.3)),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Text(
                          "${socials.keys.toList()[i]} : ",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: const Color(0xff89a4bb)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            openUrl((socials[socials.keys.toList()[i]]
                                    as Map<String, String>)
                                .values
                                .first);
                          },
                          child: Text(
                            (socials[socials.keys.toList()[i]]
                                    as Map<String, String>)
                                .keys
                                .first,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white.withOpacity(0.4),
                              fontSize: 17,
                              color: Colors.white.withOpacity(0.4),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                Row(
                  children: [
                    Text(
                      "6",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: const Color(0xff89a4bb).withOpacity(0.3)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "}",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: const Color(0xff89a4bb)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: VerticalDivider(
            width: 0.2,
            color: Colors.white.withOpacity(0.5),
          ),
        ),
        Expanded(
          child: Column(
            children: [Text("Or Fill Out This Form")],
          ),
        )
      ],
    );
  }
}
