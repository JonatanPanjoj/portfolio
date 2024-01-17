import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/config/theme/theme.dart';
import 'package:portfolio/presentation/providers/providers.dart';

class CustomGradientButton extends ConsumerWidget {
  final String label;
  final VoidCallback? onPressed;
  final double horizontalPadding;
  final double verticalPadding;
  final double fontSize;

  const CustomGradientButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.horizontalPadding = 20,
    this.verticalPadding = 0,
    this.fontSize = 20,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Ink(
        decoration: BoxDecoration(
          gradient: ref.watch(gradientNotifierProvider),
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: verticalPadding,
            ),
            foregroundColor: backgroundLight,
          ),
          onPressed: onPressed,
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    );
  }
}
