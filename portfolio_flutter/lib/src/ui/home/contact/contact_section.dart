import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter/src/constants/colors.dart';
import 'package:portfolio_flutter/src/constants/strings.dart';
import 'package:portfolio_flutter/src/ui/home/home_page_model.dart';
import 'package:portfolio_flutter/src/ui/widgets/custom_button.dart';
import 'package:portfolio_flutter/src/ui/widgets/custom_text_field.dart';
import 'package:portfolio_flutter/src/utils/color_utils.dart';
import 'package:portfolio_flutter/src/utils/toast_utils.dart';
import 'package:portfolio_flutter/src/utils/web_utils.dart';

import '../../../constants/enums.dart';
import '../../../logic/repositories/theme_repository.dart';

class ContactSection extends ConsumerStatefulWidget {
  const ContactSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ContactSectionState();
}

class _ContactSectionState extends ConsumerState<ContactSection> {
  @override
  Widget build(BuildContext context) {
    final appTheme =
        ref.watch(themeRepositoryProvider.select((value) => value)) ==
            AppTheme.lightVSCode;
    return MediaQuery.sizeOf(context).width > 1100
        ? Row(
            children: [
              const SizedBox(height: 40),
              const Expanded(
                child: SocialsSection(),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: VerticalDivider(
                  width: 0.2,
                  color: appTheme ? Colors.grey : Colors.white.withOpacity(0.5),
                ),
              ),
              const Expanded(
                child: ContactUsForm(),
              )
            ],
          )
        : const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SocialsSection(),
                ContactUsForm(),
              ],
            ),
          );
  }
}

class SocialsSection extends ConsumerWidget {
  const SocialsSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fontSize = MediaQuery.sizeOf(context).width < 450 ? 15 : 17;
    return Padding(
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
                  color: ColorUtils.getColor(ref, contactTextColor)),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Text(
                  "1",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: fontSize + 1,
                    color: ColorUtils.getColor(ref, contactTextColor)
                        .withOpacity(0.5),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  ".socials   {",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                      color: ColorUtils.getColor(ref, contactTextColor)),
                )
              ],
            ),
            for (int i = 0; i < socials.length; i++)
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Wrap(
                  children: [
                    Text(
                      (i + 2).toString(),
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: fontSize + 0,
                          color: ColorUtils.getColor(ref, contactTextColor)
                              .withOpacity(0.5)),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Text(
                      "${socials.keys.toList()[i]} : ",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: fontSize + 1,
                          color: ColorUtils.getColor(ref, contactTextColor)),
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
                          // decoration: TextDecoration.underline,
                          // decorationColor: Colors.white,
                          fontSize: fontSize + 0,
                          color: ColorUtils.getColor(ref, contactTextLinkColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            Row(
              children: [
                Text(
                  "8",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: fontSize + 0,
                      color: ColorUtils.getColor(ref, contactTextColor)
                          .withOpacity(0.5)),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "}",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: fontSize + 1,
                      color: ColorUtils.getColor(ref, contactTextColor)),
                )
              ],
            )
          ],
        ));
  }
}

class ContactUsForm extends ConsumerStatefulWidget {
  const ContactUsForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ContactUsFormState();
}

class _ContactUsFormState extends ConsumerState<ContactUsForm> {
  bool isProcessing = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Or Fill Out This Form",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: ColorUtils.getColor(ref, contactTextColor)),
          ),
          const SizedBox(height: 30),
          if (MediaQuery.sizeOf(context).width > 800) ...[
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                      label: 'Name',
                      hintText: "",
                      initialText: ref
                          .read(homePageProvider.select((value) => value.name)),
                      maxLength: 30,
                      onChanged: (value) {
                        ref.read(homePageProvider.notifier).setName(value);
                      }),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: CustomTextField(
                      label: 'Email',
                      hintText: "",
                      initialText: ref.read(
                          homePageProvider.select((value) => value.email)),
                      maxLength: 30,
                      onChanged: (value) {
                        ref.read(homePageProvider.notifier).setEmail(value);
                      }),
                ),
              ],
            ),
          ] else ...[
            CustomTextField(
                label: 'Name',
                hintText: "",
                initialText:
                    ref.read(homePageProvider.select((value) => value.name)),
                maxLength: 30,
                onChanged: (value) {
                  ref.read(homePageProvider.notifier).setName(value);
                }),
            const SizedBox(height: 20),
            CustomTextField(
                label: 'Email',
                hintText: "",
                initialText:
                    ref.read(homePageProvider.select((value) => value.email)),
                maxLength: 30,
                onChanged: (value) {
                  ref.read(homePageProvider.notifier).setEmail(value);
                }),
          ],
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
              label: 'Subject',
              hintText: "",
              initialText:
                  ref.read(homePageProvider.select((value) => value.subject)),
              maxLength: 30,
              onChanged: (value) {
                ref.read(homePageProvider.notifier).setSubject(value);
              }),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
              label: 'Message',
              hintText: "",
              initialText:
                  ref.read(homePageProvider.select((value) => value.content)),
              maxLength: 200,
              maxlines: 5,
              onChanged: (value) {
                ref.read(homePageProvider.notifier).setDesc(value);
              }),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
              text: "Submit",
              height: 40,
              borderRadius: 0,
              width: 100,
              fontSize: 14,
              onTap: () async {
                if (!isProcessing) {
                  if (mounted) {
                    setState(() {
                      isProcessing = true;
                    });
                  }
                  final res = await ref
                      .read(homePageProvider.notifier)
                      .sendContactDetails();
                  if (res != "") {
                    showErrorMessage(res);
                  } else {
                    showSuccessMessage('Message Sent Successfully');
                  }
                  if (mounted) {
                    setState(() {
                      isProcessing = false;
                    });
                  }
                }
              },
              isProcessing: false),
        ],
      ),
    );
  }
}
