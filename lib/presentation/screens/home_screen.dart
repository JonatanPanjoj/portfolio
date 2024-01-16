import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/config/theme/theme.dart';
import 'package:portfolio/presentation/providers/providers.dart';
import 'package:portfolio/presentation/widgets/widgets.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  final padding = const EdgeInsets.symmetric(horizontal: 100.0);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildAppBar(context, ref),
          const CustomSliverSizedBox(height: 50),
          _buildPresentationInfo(context),
        ],
      ),
    );
  }

  Widget _buildAppBar(BuildContext context, WidgetRef ref) {
    return SliverAppBar(
      elevation: 0,
      titleSpacing: 100,
      title: const Text(
        'Jontan Panjoj',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      pinned: true,
      actions: [
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

  Widget _buildPresentationInfo(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final TextStyle titleStyle =
        TextStyle(fontSize: size.width * 0.042, fontWeight: FontWeight.bold);
    return SliverToBoxAdapter(
      child: Padding(
        padding: padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  CustomGradientText(
                    "Hello! I'm Jonatan,",
                    style: titleStyle,
                    gradient: gradient_1,
                  ),
                  Text(
                    'Mobile & Web Developer',
                    style: titleStyle,
                  ),
                  Text(
                    'From Guatemala',
                    style: titleStyle,
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'A Product Designer and Visual Developer. I specialice in Design, mobile apps, and Visual Development.',
                    style: normal18,
                  ),
                  const SizedBox(height: 50),
                  Row(
                    children: [
                      CustomGradientButton(
                        label: 'GET IN TOUCH',
                        onPressed: () {},
                        verticalPadding: size.width * 0.0117,
                        horizontalPadding: size.width * 0.018,
                        fontSize: size.width * 0.012,
                      ),
                      const SizedBox(width: 30),
                      CustomFilledButton(
                        variant: ButtonVariant.bordered,
                        verticalPadding: size.width * 0.007,
                        horizontalPadding: size.width * 0.012,
                        label: 'PROJECTS',
                        onPressed: () {},
                        fontSize: size.width * 0.012,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              child: Image.asset(
                'assets/img/joix.jpg',
                width: size.width * 0.28,
                height: size.width * 0.38,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
