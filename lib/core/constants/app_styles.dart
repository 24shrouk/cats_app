import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppStyles {
  static TextStyle font32Bold(BuildContext context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 32),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle font16Regular(BuildContext context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle font18Medium(BuildContext context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle font24Bold(BuildContext context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle font20Bold(BuildContext context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle font14SemiBold(BuildContext context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle font18Bold(BuildContext context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle font14Regular(BuildContext context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle font28Bold(BuildContext context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 28),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle font18Regular(BuildContext context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle font18Meduim(BuildContext context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle font26Bold(BuildContext context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 26),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle font16Meduim(BuildContext context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle font22SemiBold(BuildContext context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 22),
      fontWeight: FontWeight.w600,
    );
  }

  static double getResponsiveFontSize(
    BuildContext context, {
    required double fontSize,
  }) {
    final double scaleFactor = getScaleFactor(context);
    final double responsiveSize = scaleFactor * fontSize;
    final double lowerFont = fontSize * 0.9;
    final double upperFont = fontSize * 1.1;
    return responsiveSize.clamp(lowerFont, upperFont);
  }

  static double getScaleFactor(context) {
    final width = MediaQuery.sizeOf(context).width;
    if (width < 1300) {
      return width / 900;
    } else {
      return width / 1500;
    }
  }
}
