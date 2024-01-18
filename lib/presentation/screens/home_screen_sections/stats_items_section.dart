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
              const StatNumber(stat: '+3', label: 'Years of Experience'),
              SizedBox(
                height: 50,
                child: VerticalDivider(color: colors.disabledColor),
              ),
              const StatNumber(stat: '+10', label: 'Projects Completed'),
              SizedBox(
                height: 50,
                child: VerticalDivider(color: colors.disabledColor),
              ),
              const StatNumber(stat: '+2', label: 'Customers Attended'),
            ],
          ),
        ),
      ),
    );
  }
}
