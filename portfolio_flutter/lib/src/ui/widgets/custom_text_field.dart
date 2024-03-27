// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter/src/utils/color_utils.dart';

import '../../constants/colors.dart';

class CustomTextField extends ConsumerStatefulWidget {
  final String label;
  final String hintText;
  final String initialText;
  final String hint;
  final bool isShowMaxLength;
  final bool isDigitOnly;
  final bool? isEnabled;
  final int? maxlines;

  final Color? backgroundColor;
  final int? maxLength;
  final int? minLines;
  final bool hideText;
  final Function(String value) onChanged;
  const CustomTextField({
    super.key,
    required this.label,
    required this.hintText,
    required this.initialText,
    this.hint = '',
    this.minLines,
    this.isShowMaxLength = false,
    this.isDigitOnly = false,
    this.isEnabled = true,
    this.maxlines = 1,
    this.backgroundColor = const Color(0xff031d33),
    required this.maxLength,
    this.hideText = false,
    required this.onChanged,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CustomTextFieldState();
}

class _CustomTextFieldState extends ConsumerState<CustomTextField> {
  @override
  void initState() {
    super.initState();
  }

  Widget counter(
    BuildContext context, {
    required int currentLength,
    required int? maxLength,
    required bool isFocused,
  }) {
    return Text(
      '$currentLength/$maxLength',
      semanticsLabel: 'character count',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != '')
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Text(
                  widget.label,
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    color: ColorUtils.getColor(ref, contactTextColor),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        const SizedBox(
          height: 5,
        ),
        Container(
          decoration: BoxDecoration(
            color: ColorUtils.getColor(ref, textfieldBgColor),
            borderRadius: BorderRadius.circular(0),
          ),
          child: TextFormField(
            minLines: widget.minLines,
            maxLines: widget.maxlines,
            enabled: widget.isEnabled,
            buildCounter: counter,
            controller: TextEditingController(text: widget.initialText),
            onChanged: widget.onChanged,
            maxLength: widget.maxLength,
            obscureText: widget.hideText,
            cursorColor: Colors.white,
            scrollPadding: const EdgeInsets.only(bottom: 200),
            keyboardType: widget.isDigitOnly
                ? const TextInputType.numberWithOptions(decimal: false)
                : null,
            decoration: InputDecoration(
              counterText: widget.isShowMaxLength ? null : '',
              counterStyle: GoogleFonts.outfit(
                fontSize: 14,
                color: widget.isEnabled ?? true
                    ? secondaryColor
                    : secondaryColor.withOpacity(0.5),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              enabledBorder:
                  const OutlineInputBorder(borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0),
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 0.5,
                ),
              ),
              hintText: widget.hintText,
              hintStyle: GoogleFonts.montserrat(
                fontSize: 14,
              ),
            ),
            inputFormatters: widget.isDigitOnly
                ? [
                    FilteringTextInputFormatter.digitsOnly,
                  ]
                : null,
            style: GoogleFonts.outfit(
              fontSize: 15,
              letterSpacing: -0.09,
              fontWeight: (widget.isEnabled ?? true) ? null : FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
