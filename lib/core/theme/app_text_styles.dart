import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

/// Design system typography for BluLine Courier.
///
/// Follows the typography scale defined in DESIGN_SYSTEM.md.
class AppTextStyles {
  AppTextStyles._();

  /// Hero text
  static final TextStyle display = GoogleFonts.inter(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  /// Main headings
  static final TextStyle h1 = GoogleFonts.inter(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  /// Section titles
  static final TextStyle h2 = GoogleFonts.inter(
    fontSize: 24,
    fontWeight: FontWeight.semiBold,
    color: AppColors.textPrimary,
  );

  /// Card headings
  static final TextStyle h3 = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.semiBold,
    color: AppColors.textPrimary,
  );

  /// Important text
  static final TextStyle bodyLarge = GoogleFonts.inter(
    fontSize: 18,
    fontWeight: FontWeight.medium,
    color: AppColors.textPrimary,
  );

  /// Normal content
  static final TextStyle body = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.regular,
    color: AppColors.textPrimary,
  );

  /// Labels
  static final TextStyle caption = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.regular,
    color: AppColors.textSecondary,
  );

  /// CTA buttons
  static final TextStyle button = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.semiBold,
    color: AppColors.textPrimary,
  );
}
