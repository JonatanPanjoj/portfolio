import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CuoteSection extends StatelessWidget {
  final double? fontSize;
  final EdgeInsets? padding;

  const CuoteSection({super.key, this.fontSize, this.padding});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final TextStyle titleStyle = TextStyle(
        fontSize: fontSize ?? size.width * 0.042, fontWeight: FontWeight.bold);
    return SliverToBoxAdapter(
      child: Padding(
        padding: padding ??
            const EdgeInsets.symmetric(horizontal: 200, vertical: 25),
        child: Center(
          child: Column(
            children: [
              Text(
                'cuote_1'.tr(),
                textAlign: TextAlign.center,
                style: titleStyle,
              ),
              Text(
                'cuote_2'.tr(),
                textAlign: TextAlign.center,
                style: titleStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
