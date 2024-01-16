import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:portfolio/config/theme/theme.dart';

class AppTheme {
  final bool isDarkMode;

  AppTheme({
    this.isDarkMode = true,
  });

  ThemeData getTheme() {
    return ThemeData(
      useMaterial3: true,

      //THEME COLORS
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      colorSchemeSeed: isDarkMode ? primaryDark : primaryLight,
      canvasColor: isDarkMode ? backgroundDark : backgroundLight,
      scaffoldBackgroundColor: isDarkMode ? backgroundDark : backgroundLight,
      disabledColor: isDarkMode ? disabledDark : disabledLight,

      //FONTS
      textTheme: GoogleFonts.baiJamjureeTextTheme(
        isDarkMode ? ThemeData.dark().textTheme : ThemeData.light().textTheme,
      ),

      //WIDGET STYLES
      //APP BAR
      appBarTheme: AppBarTheme(
        color: isDarkMode ? backgroundDark : backgroundLight,
      ),
    );
  }

  AppTheme copyWith({bool? isDarkMode}) {
    return AppTheme(isDarkMode: isDarkMode ?? this.isDarkMode);
  }
}
