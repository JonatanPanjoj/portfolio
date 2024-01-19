import 'package:flutter/material.dart';

class HorizontalImageAndDescription extends StatelessWidget {
  final String title;
  final String description;
  final bool swipe;
  final String image;
  final BoxFit fit;
  final VoidCallback? onPressed;

  const HorizontalImageAndDescription({
    super.key,
    this.swipe = false,
    required this.image,
    this.fit = BoxFit.cover,
    required this.title,
    required this.description,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.symmetric(horizontal: 100.0);
    final size = MediaQuery.of(context).size;
    final TextStyle titleStyle =
        TextStyle(fontSize: size.width * 0.042, fontWeight: FontWeight.bold);

    return Padding(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (!swipe) _GradientImage(image: image, onPressed: onPressed,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            width: size.width * 0.5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0),
              child: Column(
                children: [
                  Text(
                    title,
                    style: titleStyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    description,
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: size.width * 0.013),
                  )
                ],
              ),
            ),
          ),
          if (swipe)
            _GradientImage(
              image: image,
              onPressed: onPressed,
            ),
        ],
      ),
    );
  }
}

class _GradientImage extends StatelessWidget {
  final String image;
  final VoidCallback? onPressed;

  const _GradientImage({
    required this.image,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final imageSize = size.width * 0.28;
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        enableFeedback: false,
        splashFactory: NoSplash.splashFactory,
        onTap: onPressed,
        child: Stack(
          children: [
            Image.asset(
              image,
              width: imageSize,
              height: imageSize,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: imageSize + 2,
              height: imageSize + 2,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0.3, 0.9],
                    colors: [
                      Colors.transparent,
                      colors.scaffoldBackgroundColor
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
