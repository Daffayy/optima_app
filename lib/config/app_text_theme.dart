import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

mixin AppTextTheme {
  static TextStyle largeTitleSemiBold = GoogleFonts.inter(
    fontSize: 34,
    fontWeight: FontWeight.w500,
  );
  static TextStyle titleSemiBold = GoogleFonts.inter(
    fontSize: 28,
    fontWeight: FontWeight.w600,
  );
  static TextStyle bodyBold =
      GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w700);
  static TextStyle bodyMedium =
      GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w500);
  static TextStyle textLogo = GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static TextStyle textLogoSemiBold = GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
  static TextStyle caption3Bold = GoogleFonts.inter(
    fontSize: 10,
    fontWeight: FontWeight.w700,
  );
  static TextStyle caption1Medium = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static TextStyle caption1Reguler = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static TextStyle regularSize12 =
      GoogleFonts.montserrat(fontSize: 12, fontWeight: FontWeight.w400);
  static TextStyle caption2Semibold =
  GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w600);
  static TextStyle caption2Reguler =
      GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w400);

  static TextStyle footnoteSmall =
      GoogleFonts.inter(fontSize: 10, fontWeight: FontWeight.w300);
  static TextStyle footnoteReguler =
      GoogleFonts.inter(fontSize: 13, fontWeight: FontWeight.w400);
  static TextStyle footnoteMedium =
      GoogleFonts.inter(fontSize: 13, fontWeight: FontWeight.w500);
  static TextStyle title3SemiBold = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static TextStyle title1SemiBold =
      GoogleFonts.inter(fontSize: 28, fontWeight: FontWeight.w600);
}
