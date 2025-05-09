import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/widgets.dart';

class UsedToolsMobileSection extends StatelessWidget {
  const UsedToolsMobileSection({super.key});


  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomGradientText(
              " ${'tools'.tr()} ",
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomImageContainer(
                  image: 'assets/img/flutter.png',
                  lable: 'Flutter',
                  imageSize: 35,
                  fontSize: 13,
                  containerSize: 80,
                ),
                CustomImageContainer(
                  image: 'assets/img/firebase.png',
                  lable: 'Firebase',
                  fit: BoxFit.fitHeight,
                  imageSize: 35,
                  fontSize: 13,
                  containerSize: 80,
                ),
                CustomImageContainer(
                  image: 'assets/img/figma.png',
                  lable: 'Figma',
                  fit: BoxFit.fitHeight,
                  imageSize: 35,
                  fontSize: 13,
                  containerSize: 80,
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
                  imageSize: 35,
                  fontSize: 13,
                  containerSize: 80,
                ),
                CustomImageContainer(
                  image: 'assets/img/nojejs.png',
                  lable: 'Node Js',
                  fit: BoxFit.fitHeight,
                  imageSize: 35,
                  fontSize: 13,
                  containerSize: 80,
                ),
                CustomImageContainer(
                  image: 'assets/img/jira.png',
                  lable: 'Jira',
                  fit: BoxFit.fitHeight,
                  imageSize: 35,
                  fontSize: 13,
                  containerSize: 80,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
