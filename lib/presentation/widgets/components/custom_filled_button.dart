import 'package:flutter/material.dart';

enum ButtonVariant { primary, text, bordered }

class CustomFilledButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final ButtonVariant variant;
  final double horizontalPadding;
  final double verticalPadding;
  final double fontSize;
  final bool isBold; 

  const CustomFilledButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.variant = ButtonVariant.primary,
    this.horizontalPadding = 0,
    this.verticalPadding = 0,
    this.fontSize = 20,
    this.isBold = true
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: selectButtonVariant(context),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal ,
          ),
        ),
      ),
    );
  }

  ButtonStyle selectButtonVariant(BuildContext context) {
    switch (variant) {
      case ButtonVariant.primary:
        return primaryButtonStyle(context);
      case ButtonVariant.text:
        return textButtonStyle(context);
      case ButtonVariant.bordered:
        return borderedButtonStyle(context);
      default:
        return primaryButtonStyle(context);
    }
  }

  ButtonStyle primaryButtonStyle(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return FilledButton.styleFrom(
      backgroundColor: colors.onSurface,
      foregroundColor: colors.background,
    );
  }

  ButtonStyle textButtonStyle(BuildContext context) {
    final colors = Theme.of(context);
    return FilledButton.styleFrom(
      backgroundColor: colors.scaffoldBackgroundColor,
      foregroundColor: colors.colorScheme.onSurface,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }

  ButtonStyle borderedButtonStyle(BuildContext context) {
    final colors = Theme.of(context);
    return FilledButton.styleFrom(
      backgroundColor: colors.scaffoldBackgroundColor,
      foregroundColor: colors.colorScheme.onSurface,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: colors.colorScheme.onSurface, width: 1),
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
