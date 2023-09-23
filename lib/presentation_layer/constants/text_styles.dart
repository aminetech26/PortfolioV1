import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {

  static TextStyle headerTextStyle() {
    return GoogleFonts.signikaNegative(
      fontWeight: FontWeight.w600,
      fontSize: 5.sp,
      color: Colors.black38,
    );
  }
  static TextStyle customHeaderTextStyle() {
    return GoogleFonts.signikaNegative(
      fontWeight: FontWeight.w600,
      fontSize: 5.sp,
      color: Colors.black87,
    );
  }
  static TextStyle montserratTextStyle() {
    return GoogleFonts.montserrat(
      fontWeight: FontWeight.bold,
      fontSize: 10.sp,
      color: Colors.black87,
    );
  }
  static TextStyle servicesMontserratTextStyle() {
    return GoogleFonts.montserrat(
      fontWeight: FontWeight.bold,
      fontSize: 5.sp,
      color: Colors.black,
    );
  }
  static TextStyle skillsMontserratTextStyle() {
    return GoogleFonts.montserrat(
      fontWeight: FontWeight.bold,
      fontSize: 3.sp,
      color: Colors.black,
    );
  }
  static TextStyle customMontserratTextStyle() {
    return GoogleFonts.montserrat(
      fontWeight: FontWeight.w700,
      fontSize: 10.sp,
      color: Colors.lightBlueAccent,
    );
  }
  static TextStyle headingStyles() {
    return GoogleFonts.rubikMoonrocks(
      fontWeight: FontWeight.w800,
      fontSize: 10.sp,
      letterSpacing: 2,
      color: Colors.black87,
    );
  }
  static TextStyle normalText() {
    return GoogleFonts.signikaNegative(
      fontWeight: FontWeight.w500,
      fontSize: 5.sp,
      letterSpacing: 1,
      color: Colors.black54,
    );
  }

}