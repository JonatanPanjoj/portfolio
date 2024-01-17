import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:portfolio/config/theme/theme.dart';


final isDarkModeProvider = StateProvider<bool>((ref) => true);

// Un objeto de tipo AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  //                     ... Aquí se puede mandar parametros como la semmilla o el modo, dependiendo de la clase
  (ref) => ThemeNotifier(),
);

class ThemeNotifier extends StateNotifier<AppTheme> {
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }
}

//GRADIENT

final gradientNotifierProvider = StateNotifierProvider <GradientNotifier,LinearGradient> ((ref) {
  return GradientNotifier();
});

class GradientNotifier extends StateNotifier<LinearGradient>{
  GradientNotifier(): super (gradients.first);

  void changeGradient(LinearGradient gradient){
    state = gradient;
  }
  
}