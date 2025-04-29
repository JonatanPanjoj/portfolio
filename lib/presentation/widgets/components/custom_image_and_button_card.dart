import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/widgets.dart';

class CustomImageAndButtonCard extends StatelessWidget {
  final String image;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomImageAndButtonCard({
    super.key,
    required this.image,
    required this.width,
    required this.height,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context);
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: Stack(
        children: [
          Image.asset(
            image,
            width: width,
            height: width,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: width + 2,
            height: height + 2,
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0.3, 0.9],
                  colors: [Colors.transparent, colors.scaffoldBackgroundColor],
                ),
              ),
            ),
          ),
          if (onPressed != null)
            Positioned(
              right: 25,
              bottom: 25,
              child: CustomFilledButton(
              horizontalPadding: 10,
              verticalPadding: 5,
              fontSize: 15,
              onPressed: onPressed,
              label: 'View More',
              variant: ButtonVariant.primary,
            ),
          )
        ],
      ),
    );
  }
}
