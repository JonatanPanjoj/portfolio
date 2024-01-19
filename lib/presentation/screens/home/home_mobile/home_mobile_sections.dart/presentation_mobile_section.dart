import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/widgets.dart';

class PresentationMobileSection extends StatelessWidget {
  const PresentationMobileSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.07),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Web & Mobile Developer',
              style: TextStyle(
                fontSize: size.width * 0.09,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomGradientButton(
                  label: 'get_in_touch'.tr(),
                  onPressed: () {},
                  verticalPadding: size.width * 0.04,
                  horizontalPadding: size.width * 0.04,
                  fontSize: size.width * 0.03,
                ),
                const SizedBox(width: 30),
                CustomFilledButton(
                  variant: ButtonVariant.bordered,
                  verticalPadding: size.width * 0.022,
                  horizontalPadding: size.width * 0.05,
                  label: 'projects'.tr().toUpperCase(),
                  onPressed: () {},
                  fontSize: size.width * 0.03,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
