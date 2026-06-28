import 'package:flutter/material.dart';

/// Design system shadow tokens for BluLine Courier
class AppShadows {
  AppShadows._();

  /// Subtle shadow for primary elevation
  static const List<BoxShadow> primary = [
    BoxShadow(
      color: Color(0x1A000000), // 10% opacity black
      blurRadius: 8,
      offset: Offset(0, 2),
    ),
  ];

  /// Medium shadow for floating elements
  static const List<BoxShadow> medium = [
    BoxShadow(
      color: Color(0x26000000), // 15% opacity black
      blurRadius: 12,
      offset: Offset(0, 4),
    ),
  ];

  /// No shadow for flat elements
  static const List<BoxShadow> none = [];
}
