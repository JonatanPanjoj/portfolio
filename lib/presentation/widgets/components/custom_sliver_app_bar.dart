import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/config/theme/theme.dart';
import 'package:portfolio/presentation/providers/providers.dart';
import 'package:portfolio/presentation/widgets/widgets.dart';

class CustomSliverAppBar extends ConsumerWidget {
  const CustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = Theme.of(context);
    return SliverAppBar(
      surfaceTintColor: colors.scaffoldBackgroundColor,
      elevation: 0,
      titleSpacing: 100,
      title: const Text(
        'Jonatan Panjoj',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      pinned: true,
      actions: [
        PopupMenuButton<LinearGradient>(
          onSelected: (LinearGradient result) {
            ref.read(gradientNotifierProvider.notifier).changeGradient(result);
          },
          itemBuilder: (BuildContext context) =>
              gradients.map((LinearGradient gradient) {
            return PopupMenuItem<LinearGradient>(
              value: gradient,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(gradient: gradient),
                ),
              ),
            );
          }).toList(),
        ),
        CustomFilledButton(
          variant: ButtonVariant.text,
          isBold: false,
          horizontalPadding: 0,
          label: "Home",
          onPressed: () {},
        ),
        CustomFilledButton(
          variant: ButtonVariant.text,
          isBold: false,
          horizontalPadding: 0,
          label: "Projects",
          onPressed: () {},
        ),
        CustomFilledButton(
          variant: ButtonVariant.text,
          isBold: false,
          horizontalPadding: 0,
          label: "Extra",
          onPressed: () {
            ref.read(themeNotifierProvider.notifier).toggleDarkMode();
          },
        ),
        CustomFilledButton(
          variant: ButtonVariant.text,
          isBold: false,
          horizontalPadding: 0,
          label: "About",
          onPressed: () {},
        ),
        const SizedBox(
          width: 50,
        ),
        CustomFilledButton(
          horizontalPadding: 10,
          label: "Lest's Talk",
          onPressed: () {},
        ),
        const SizedBox(
          width: 100,
        ),
      ],
    );
  }
}