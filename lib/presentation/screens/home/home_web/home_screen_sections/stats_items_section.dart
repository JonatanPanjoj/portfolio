import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/widgets.dart';

class StatsItemsSection extends StatelessWidget {
  const StatsItemsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context);

    return SliverToBoxAdapter(
      child: Container(
        decoration: BoxDecoration(color: colors.cardColor),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StatNumber(stat: '+3', label: 'years_of_experience'.tr()),
              SizedBox(
                height: 50,
                child: VerticalDivider(color: colors.disabledColor),
              ),
              StatNumber(stat: '+10', label: 'projects_completed'.tr()),
              SizedBox(
                height: 50,
                child: VerticalDivider(color: colors.disabledColor),
              ),
              StatNumber(stat: '+2', label: 'customers_attended'.tr()),
            ],
          ),
        ),
      ),
    );
  }
}
