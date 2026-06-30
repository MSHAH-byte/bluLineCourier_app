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
    fontWeight: FontWeight.w700, // bold
    color: AppColors.textPrimary,
  );

  /// Main headings
  static final TextStyle h1 = GoogleFonts.inter(
    fontSize: 32,
    fontWeight: FontWeight.w700, // bold
    color: AppColors.textPrimary,
  );

  /// Section titles
  static final TextStyle h2 = GoogleFonts.inter(
    fontSize: 24,
    fontWeight: FontWeight.w600, // semiBold
    color: AppColors.textPrimary,
  );

  /// Card headings
  static final TextStyle h3 = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w600, // semiBold
    color: AppColors.textPrimary,
  );

  /// Important text
  static final TextStyle bodyLarge = GoogleFonts.inter(
    fontSize: 18,
    fontWeight: FontWeight.w500, // medium
    color: AppColors.textPrimary,
  );

  /// Normal content
  static final TextStyle body = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w400, // regular
    color: AppColors.textPrimary,
  );

  /// Labels
  static final TextStyle caption = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w400, // regular
    color: AppColors.textSecondary,
  );

  /// CTA buttons
  static final TextStyle button = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w600, // semiBold
    color: AppColors.textPrimary,
  );

  // --- Extended Variants ---

  /// Hero subtitle / Section description
  static final TextStyle bodyLargeMuted = bodyLarge.copyWith(
    color: AppColors.textSecondary,
  );

  /// Muted body text / Secondary body
  static final TextStyle bodyMuted = body.copyWith(
    color: AppColors.textSecondary,
  );

  /// Accent body text
  static final TextStyle bodyAccent = body.copyWith(
    color: AppColors.textAccent,
  );

  /// Timeline title
  static final TextStyle timelineTitle = bodyLarge.copyWith(
    fontWeight: FontWeight.w700, // bold
  );

  /// Timeline subtitle
  static final TextStyle timelineSubtitle = caption.copyWith(
    color: AppColors.textSecondary,
  );

  /// Card description
  static final TextStyle cardDescription = caption.copyWith(
    color: AppColors.textSecondary,
  );
}
