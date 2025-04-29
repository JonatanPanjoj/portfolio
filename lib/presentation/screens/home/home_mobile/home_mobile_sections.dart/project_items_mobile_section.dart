import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/config/theme/theme.dart';
import 'package:portfolio/presentation/widgets/widgets.dart';

class ProjectItemsMobileSection extends StatelessWidget {
  const ProjectItemsMobileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          CustomGradientText(
            " ${'some_projects'.tr()} ",
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const Text(
                  'Reper',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 5),
                Text(
                  'reper_description'.tr(),
                  style: normal16,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          const CustomImageAndButtonCard(
            image: 'assets/img/reper.jpg',
            width: 300,
            height: 300,
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const Text(
                  'Planigo',
                  style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 5),
                Text(
                  'planigo_description'.tr(),
                  textAlign: TextAlign.justify,
                  style: normal16,
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          const CustomImageAndButtonCard(
            image: 'assets/img/planigo.jpg',
            width: 300,
            height: 300,
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const Text(
                  'Cinemapedia',
                  style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 5),
                Text(
                  'cinemapedia_description'.tr(),
                  textAlign: TextAlign.justify,
                  style: normal16,
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          const CustomImageAndButtonCard(
            image: 'assets/img/cinemapedia.png',
            width: 300,
            height: 300,
          ),
        ],
      ),
    );
  }
}
