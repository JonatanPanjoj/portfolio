import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/widgets.dart';

class PresentationMobileSection extends StatelessWidget {
  const PresentationMobileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Web & Mobile Developer',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          const SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomGradientButton(
                label: 'get_in_touch'.tr(),
                onPressed: () {},
                verticalPadding: 10,
                horizontalPadding: 15,
                fontSize: 14,
              ),
              const SizedBox(width: 30),
              CustomFilledButton(
                variant: ButtonVariant.bordered,
                verticalPadding: 12,
                horizontalPadding: 12,
                label: 'projects'.tr().toUpperCase(),
                onPressed: () {},
                fontSize: 14,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
