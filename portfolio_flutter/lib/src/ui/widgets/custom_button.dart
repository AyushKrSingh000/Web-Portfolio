// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';

class CustomButton extends ConsumerStatefulWidget {
  final String text;
  final VoidCallback onTap;
  final double width;
  final double borderRadius;
  final double fontSize;
  final double height;
  final FontWeight fontWeight;
  final bool isProcessing;
  final bool secondDesgin;
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.width = 150,
    this.borderRadius = 10,
    this.fontSize = 17,
    this.height = 50,
    this.fontWeight = FontWeight.w600,
    required this.isProcessing,
    this.secondDesgin = false,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CustomButtonState();
}

class _CustomButtonState extends ConsumerState<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          color: !widget.secondDesgin ? Colors.blue.withOpacity(0.4) : null,
          borderRadius: BorderRadius.circular(widget.borderRadius),
          border: widget.secondDesgin
              ? Border.all(
                  color: buttonBorderColor.withOpacity(0.2),
                  width: 2,
                )
              : null,
        ),
        height: widget.height,
        width: widget.width,
        child: Center(
          child: widget.isProcessing
              ? const Center(
                  child: SizedBox(
                    height: 25,
                    width: 25,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 2,
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: FittedBox(
                    child: Text(
                      widget.text,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        fontSize: widget.fontSize,
                        color: Colors.white,
                        fontWeight: widget.fontWeight,
                      ),
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
