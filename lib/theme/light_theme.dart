import 'package:flutter/material.dart';

Color _primaryColor = const Color(0xFF04BB7B); // Main Green
Color _secondaryColor = const Color(0xFF2ECC71); // Light Green

ThemeData light({Color? primaryColor, Color? secondaryColor}) => ThemeData(
  fontFamily: 'TitilliumWeb',
  primaryColor: primaryColor ?? _primaryColor, // ✅ FIXED
  brightness: Brightness.light,

  highlightColor: Colors.white,
  hintColor: const Color(0xFFA7A7A7),
  splashColor: Colors.transparent,
  cardColor: Colors.white,

  scaffoldBackgroundColor: const Color(0xFFF6FFFB), // Light green background

  textTheme: TextTheme(
    bodyLarge: const TextStyle(color: Color(0xFF222324)),
    bodyMedium: TextStyle(color: _primaryColor),
    bodySmall: const TextStyle(color: Color(0xFFA7A7A7)),
    titleMedium: const TextStyle(color: Color(0xFF656566)),
  ),

  colorScheme: ColorScheme.light(
    primary: _primaryColor,
    secondary: _secondaryColor,

    tertiary: const Color(0xFFFFBB38), // Warning
    tertiaryContainer: const Color(0xFFCFF5E7),
    onTertiaryContainer: const Color(0xFF04BB7B),

    onPrimary: Colors.white,
    surface: const Color(0xFFF6FFFB),

    onSecondary: const Color(0xFF1E8449),
    error: const Color(0xFFFF4040),

    onSecondaryContainer: const Color(0xFFE8F8F5),
    outline: _primaryColor, // ✅ Green borders everywhere
    onTertiary: const Color(0xFFE8F8F5),
    shadow: const Color(0xFF6E7C7C),

    primaryContainer: const Color(0xFF9AECC6),
    secondaryContainer: const Color(0xFFD5F5E3),
  ),

  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
    TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
  }),
);
