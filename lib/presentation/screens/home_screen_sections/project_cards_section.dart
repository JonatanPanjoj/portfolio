import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/widgets.dart';

class ProjectCardsSection extends StatelessWidget {
  const ProjectCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
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
                'some_projects'.tr(),
                style: titleStyle,
              ),
            ),
          ),
          const SizedBox(height: 50),
          HorizontalImageAndDescription(
            title: 'Cinemapedia',
            description: 'cinemapedia_description'.tr(),
            image: 'assets/img/cinemapedia.png',
            fit: BoxFit.fitHeight,
            swipe: true,
          ),
          HorizontalImageAndDescription(
            title: 'Widgets App',
            description: 'widgets_app_description'.tr(),
            image: 'assets/img/widgets-app.png',
            fit: BoxFit.fitHeight,
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
