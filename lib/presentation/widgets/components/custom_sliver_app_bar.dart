import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/config/theme/theme.dart';
import 'package:portfolio/presentation/providers/providers.dart';
import 'package:portfolio/presentation/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomSliverAppBar extends ConsumerWidget {
  final GlobalKey? presentationKey;
  final GlobalKey? projectsKey;
  final GlobalKey? toolsKey;

  const CustomSliverAppBar({
    super.key,
    this.presentationKey,
    this.projectsKey,
    this.toolsKey,
  });

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
        CustomFilledButton(
          variant: ButtonVariant.text,
          isBold: false,
          horizontalPadding: 0,
          label: "home".tr(),
          onPressed: () {
            context.replace('/');
            if (presentationKey == null) return;
            scrollToKey(presentationKey!);
          },
        ),
        CustomFilledButton(
          variant: ButtonVariant.text,
          isBold: false,
          horizontalPadding: 0,
          label: "projects".tr(),
          onPressed: () {
            if (projectsKey == null) return;
            scrollToKey(projectsKey!);
          },
        ),
        CustomFilledButton(
          variant: ButtonVariant.text,
          isBold: false,
          horizontalPadding: 0,
          label: "tools".tr(),
          onPressed: () {
            if (toolsKey == null) return;
            scrollToKey(toolsKey!);
          },
        ),
        const SizedBox(
          width: 25,
        ),
        PopupMenuButton<LinearGradient>(
          child: const Icon(Icons.gradient_outlined),
          onSelected: (LinearGradient result) {
            ref.read(gradientNotifierProvider.notifier).changeGradient(result);
          },
          itemBuilder: (BuildContext context) =>
              gradients.map((LinearGradient gradient) {
            return PopupMenuItem<LinearGradient>(
              value: gradient,
              padding: const EdgeInsets.only(left: 40),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(gradient: gradient),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
        const SizedBox(
          width: 30,
        ),
        IconButton(
          color: colors.colorScheme.onSurface,
          icon: ref.watch(themeNotifierProvider).isDarkMode
              ? const Icon(Icons.light_mode)
              : const Icon(Icons.dark_mode),
          onPressed: () {
            ref.read(themeNotifierProvider.notifier).toggleDarkMode();
          },
        ),
        const SizedBox(
          width: 50,
        ),
        CustomFilledButton(
          horizontalPadding: 10,
          label: "lets_talk".tr(),
          onPressed: () async {
            await launchUrl(
              Uri.https('instagram.com', '/jonatan_panjoj/'),
            );
          },
        ),
        const SizedBox(
          width: 100,
        ),
      ],
    );
  }

  void scrollToKey(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: Durations.extralong4,
      curve: Curves.easeInOutCirc,
    );
  }
}
