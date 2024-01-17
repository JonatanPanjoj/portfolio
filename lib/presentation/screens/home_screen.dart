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
          _buildPresentationInfo(context, ref),
          const CustomSliverSizedBox(height: 75),
          _buildProjects(context),
          const CustomSliverSizedBox(height: 50),
          _buildStats(context),
          const CustomSliverSizedBox(height: 50),
          _buildTools(context),
          const CustomSliverSizedBox(height: 75),
          _buildCuote(context)
        ],
      ),
    );
  }

  Widget _buildAppBar(BuildContext context, WidgetRef ref) {
    final colors = Theme.of(context);
    return SliverAppBar(
      surfaceTintColor: colors.scaffoldBackgroundColor,
      elevation: 0,
      titleSpacing: 100,
      title: const Text(
        'Jontan Panjoj',
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

  Widget _buildPresentationInfo(BuildContext context, WidgetRef ref) {
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

  Widget _buildProjects(BuildContext context) {
    final colors = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final TextStyle titleStyle =
        TextStyle(fontSize: size.width * 0.042, fontWeight: FontWeight.bold);
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Container(
            width: size.width,
            decoration: BoxDecoration(color: colors.cardColor),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100.0, vertical: 25),
              child: CustomGradientText(
                'Selected Projects',
                style: titleStyle,
              ),
            ),
          ),
          const SizedBox(height: 50),
          const HorizontalImageAndDescription(),
          const SizedBox(height: 25),
          const HorizontalImageAndDescription(
            swipe: true,
          ),
          const SizedBox(height: 25),
          const HorizontalImageAndDescription(),
        ],
      ),
    );
  }

  Widget _buildStats(BuildContext context) {
    final colors = Theme.of(context);
    return SliverToBoxAdapter(
      child: Container(
          decoration: BoxDecoration(color: colors.cardColor),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const StatNumber(stat: '+3', label: 'Years of Experience'),
                SizedBox(
                  height: 50,
                  child: VerticalDivider(color: colors.disabledColor),
                ),
                const StatNumber(stat: '+10', label: 'Projects Completed'),
                SizedBox(
                  height: 50,
                  child: VerticalDivider(color: colors.disabledColor),
                ),
                const StatNumber(stat: '+2', label: 'Customers Attended'),
              ],
            ),
          )),
    );
  }

  Widget _buildTools(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final TextStyle titleStyle =
        TextStyle(fontSize: size.width * 0.042, fontWeight: FontWeight.bold);
    return SliverToBoxAdapter(
      child: Padding(
        padding: padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomGradientText('Tools', style: titleStyle),
            const SizedBox(height: 50),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomImageContainer(
                  image: 'assets/img/flutter.png',
                  lable: 'Flutter',
                ),
                CustomImageContainer(
                  image: 'assets/img/firebase.png',
                  lable: 'Firebase',
                  fit: BoxFit.fitHeight,
                ),
                CustomImageContainer(
                  image: 'assets/img/figma.png',
                  lable: 'Figma',
                  fit: BoxFit.fitHeight,
                ),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomImageContainer(
                  image: 'assets/img/angular.png',
                  lable: 'Angular',
                ),
                CustomImageContainer(
                  image: 'assets/img/nojejs.png',
                  lable: 'Node Js',
                  fit: BoxFit.fitHeight,
                ),
                CustomImageContainer(
                  image: 'assets/img/jira.png',
                  lable: 'Jira',
                  fit: BoxFit.fitHeight,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCuote(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final TextStyle titleStyle =
        TextStyle(fontSize: size.width * 0.042, fontWeight: FontWeight.bold);
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 25),
        child: Center(
          child: Column(
            children: [
              Text(
                'Transformando ideas en experiencias móviles excepcionales:',
                textAlign: TextAlign.center,
                style: titleStyle,
              ),
              Text(
                '¡Diseñando el futuro, una app a la vez!',
                textAlign: TextAlign.center,
                style: titleStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
