import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/widgets.dart';

class UsedToolsSection extends StatelessWidget {
  const UsedToolsSection({super.key});

  final padding = const EdgeInsets.symmetric(horizontal: 100.0);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final TextStyle titleStyle =
        TextStyle(fontSize: size.width * 0.042, fontWeight: FontWeight.bold);
    return SliverToBoxAdapter(
      child: Padding(
        padding: padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomGradientText('tools'.tr().toUpperCase(), style: titleStyle),
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
}