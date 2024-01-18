import 'package:flutter/material.dart';
import 'package:portfolio/config/theme/theme.dart';
import 'package:portfolio/presentation/widgets/widgets.dart';

class PresentationInfoSection extends StatelessWidget {
  const PresentationInfoSection({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.symmetric(horizontal: 100.0);
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
                    'Ready to bring your digital dreams to life!',
                    style: titleStyle,
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Crafting immersive experiences through mobile app design and visual development is my forte. Let's turn your ideas into captivating realities!",
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
