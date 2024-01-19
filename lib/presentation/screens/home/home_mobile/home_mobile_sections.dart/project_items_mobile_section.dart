import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/config/theme/theme.dart';
import 'package:portfolio/presentation/widgets/widgets.dart';

class ProjectItemsMobileSection extends StatelessWidget {
  const ProjectItemsMobileSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Column(
        children: [
          CustomGradientText(
            " ${'some_projects'.tr()} ",
            style: TextStyle(
              fontSize: size.width * 0.07,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.07),
            child: Column(
              children: [
                Text(
                  'Cinemapedia',
                  style: TextStyle(
                      fontSize: size.width * 0.06, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 5),
                Text(
                  'cinemapedia_description'.tr(),
                  style: normal16,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          CustomImageAndButtonCard(
            image: 'assets/img/cinemapedia.png',
            width: size.width * 0.85,
            height: size.width * 0.85,
            onPressed: () {},
          ),
          const SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.07),
            child: Column(
              children: [
                Text(
                  'Widgets App',
                  style: TextStyle(
                      fontSize: size.width * 0.06, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 5),
                Text(
                  'widgets_app_description'.tr(),
                  textAlign: TextAlign.justify,
                  style: normal16,
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          CustomImageAndButtonCard(
            image: 'assets/img/widgets-app.png',
            width: size.width * 0.85,
            height: size.width * 0.85,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
