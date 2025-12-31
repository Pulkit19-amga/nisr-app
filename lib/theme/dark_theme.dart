import 'package:flutter/material.dart';

// ✅ Green Palette for Dark Theme
Color _primaryColor = const Color(0xFF04BB7B); // Main Green
Color _secondaryColor = const Color(0xFF2ECC71); // Light Green

ThemeData dark = ThemeData(
  fontFamily: 'TitilliumWeb',
  primaryColor: _primaryColor,
  brightness: Brightness.dark,

  highlightColor: const Color(0xFF1E1E1E),
  hintColor: const Color(0xFFB0B0B0),
  cardColor: const Color(0xFF1F1F1F),
  scaffoldBackgroundColor: const Color(0xFF000000),
  splashColor: Colors.transparent,

  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Color(0xFFE9EEF4)),
    bodyMedium: TextStyle(color: Color(0xFFE9EEF4)),
    bodySmall: TextStyle(color: Color(0xFFBDBDBD)),
  ),

  colorScheme: ColorScheme.dark(
    primary: _primaryColor,          // ✅ GREEN
    secondary: _secondaryColor,      // ✅ Light Green

    tertiary: const Color(0xFFFFBB38), // Warning
    tertiaryContainer: const Color(0xFF1E3A32), // Dark green container

    surface: const Color(0xFF1A1A1A),
    onPrimary: Colors.white,

    onTertiaryContainer: const Color(0xFF04BB7B), // Success GREEN
    primaryContainer: const Color(0xFF208458),

    onSecondaryContainer: const Color(0xFF1E1E1E),
    outline: const Color(0xFF04BB7B), // ✅ Green borders

    onTertiary: const Color(0xFF8A8A8A),
    secondaryContainer: const Color(0xFF133F33),

    surfaceContainer: const Color(0xFF122B23),
    error: const Color(0xFFFF4040),
    shadow: const Color(0xFF0E0E0E),
  ),

  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: ZoomPageTransitionsBuilder(),
    TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
    TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
  }),
);
