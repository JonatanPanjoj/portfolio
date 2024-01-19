import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/components/custom_gradient_text.dart';

class StatNumber extends StatelessWidget {
  final String stat;
  final String label;
  final double? lableSize;
  final double? statSize;

  const StatNumber({
    super.key,
    required this.stat,
    required this.label,
    this.lableSize,
    this.statSize,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          CustomGradientText(
            stat,
            style: TextStyle(
                fontSize: statSize ?? size.width * 0.035),
          ),
          Text(
            label,
            style: TextStyle(
                fontSize: lableSize ?? size.width * 0.013),
          )
        ],
      ),
    );
  }
}
