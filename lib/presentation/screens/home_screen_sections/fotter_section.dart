import 'package:flutter/material.dart';
import 'package:portfolio/config/theme/theme.dart';
import 'package:portfolio/presentation/widgets/widgets.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  final EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 100);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: padding,
        child: Column(
          children: [
            const Divider(),
            const SizedBox(height: 25),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Jonatan Panjoj', style: bold28),
                Row(
                  children: [
                    CustomCircularImage(
                      image: 'assets/img/instagram-icon.png',
                      uri: Uri.https('instagram.com', '/jonatan_panjoj/'),
                    ),
                    const SizedBox(width: 15),
                    CustomCircularImage(
                      image: 'assets/img/linkedin-icon.png',
                      uri: Uri.https('linkedin.com', '/in/jonatan-ixpanel/'),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
