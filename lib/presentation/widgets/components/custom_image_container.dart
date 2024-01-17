import 'package:flutter/material.dart';

class CustomImageContainer extends StatelessWidget {
  final String lable;
  final String image;
  final BoxFit fit;

  const CustomImageContainer({
    super.key,
    required this.image,
    required this.lable,
    this.fit = BoxFit.cover
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Container(
        width: size.width * 0.12,
        height: size.width * 0.12,
        decoration: BoxDecoration(color: colors.cardColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              fit: fit,
              width: size.width * 0.05,
              height: size.width * 0.05,
            ),
            const SizedBox(height: 15),
            Text(
              lable,
              style: TextStyle(
                fontSize: size.width * 0.012,
              ),
            )
          ],
        ),
      ),
    );
  }
}
