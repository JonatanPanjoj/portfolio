import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/widgets.dart';

class StatsItemsMobileSection extends StatelessWidget {
  const StatsItemsMobileSection({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context);

    return SliverToBoxAdapter(
      child: Container(
        decoration: BoxDecoration(color: colors.cardColor),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StatNumber(
                stat: ' +3 ',
                label: 'years_of_experience'.tr(),
                statSize: 30,
                lableSize: 15,
              ),
              SizedBox(
                height: 50,
                width: 10,
                child: Divider(color: colors.disabledColor),
              ),
              StatNumber(
                stat: ' +10  ',
                label: 'projects_completed'.tr(),
                statSize: 30,
                lableSize: 15,
              ),
              SizedBox(
                width: 10,
                height: 50,
                child: Divider(color: colors.disabledColor),
              ),
              StatNumber(
                stat: ' +2 ',
                label: 'customers_attended'.tr(),
                statSize: 30,
                lableSize: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
