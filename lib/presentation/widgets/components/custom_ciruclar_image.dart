import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/presentation/providers/providers.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomCircularImage extends ConsumerWidget {
  final String image;
  final Uri? uri;

  const CustomCircularImage({
    super.key,
    required this.image,
    this.uri
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = Theme.of(context);
    return Stack(
      children: [
        Container(
          width: 48.0,
          height: 48.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: ref.watch(gradientNotifierProvider)),
          padding: const EdgeInsets.all(3),
          child: Container(
            width: 47,
            height: 47,
            decoration: BoxDecoration(
              color: colors.scaffoldBackgroundColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
        SizedBox(
          width: 48.0,
          height: 48.0,
          child: IconButton(
            onPressed: () async {

              if(uri == null) return;
              await launchUrl(
                uri!,
              );
            },
            icon: Image.asset(
              image,
              width: 15,
              height: 15,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
