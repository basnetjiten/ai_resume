import 'package:flutter/material.dart';

abstract class AppColors {
  // Primary Colors
  static const Color primary = Color(0xFF6A11CB); // vivid-cyan-blue
  static const Color secondary = Color(0xFF2575FC); // vibrant-purple

  // Background Colors
  static const Color background = Color(0xFFF5F7FA); // soft-white
  static const Color surface = Color(0xFFD0E8FF); // light-cyan-blue
  static const Color transparent = Colors.transparent;

  // Text Colors
  static const Color textPrimary = Colors.white; // dark charcoal

  // Border Colors
  static const Color borderPrimary = Color(0xFFFFD700);
  static const Color borderSecondary = Color(0xFF00E6B8);
  static const Color border = Color(0xFF00FFD1);

  // State Colors
  static const Color error = Color(0xFFFF4C4C);
  static const Color success = Color(0xFF00FFC2);
  static const Color warning = Color(0xFFFFD700);

  // UI Element Colors
  static const Color cardBackground = Color(0x33FFFFFF);
  static const Color cardBorder = Color(0x66FFFFFF);
  static const Color shadow = Color(0x1A000000);

  // Button Colors
  static const Color buttonPrimary = Color(0xFF1E90FF);
  static const Color buttonDisabled = Color(0x1F1C1C1E);

  // Icon Colors
  static const Color iconPrimary = Color(0xFFFFFFFF);

  // Helper methods for opacity variations
  static Color withOpacity(Color color, double opacity) {
    return color.withOpacity(opacity.clamp(0.0, 1.0));
  }

  // Common opacities
  static const double opacity10 = 0.1;
  static const double opacity12 = 0.12;
  static const double opacity15 = 0.15;
  static const double opacity20 = 0.2;
  static const double opacity30 = 0.3;
  static const double opacity50 = 0.5;
  static const double opacity70 = 0.7;
  static const double opacity80 = 0.8;
  static const double opacity90 = 0.9;
}
