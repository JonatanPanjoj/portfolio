import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/components/custom_gradient_text.dart';

class StatNumber extends StatelessWidget {
  final String stat;
  final String label;

  const StatNumber({
    super.key,
    required this.stat,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          CustomGradientText(
            stat,
            style: TextStyle(fontSize: size.width * 0.035),
          ),
          Text(
            label,
            style: TextStyle(fontSize: size.width * 0.013),
          )
        ],
      ),
    );
  }
}
