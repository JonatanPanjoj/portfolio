import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/presentation/widgets/widgets.dart';

class SliverAppBarMobile extends StatelessWidget {
  const SliverAppBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context);
    return SliverAppBar(
      shadowColor: colors.canvasColor,
      elevation: 0,
      surfaceTintColor: colors.canvasColor,
      backgroundColor: colors.canvasColor,
      centerTitle: false,
      expandedHeight: 500,
      titleTextStyle: GoogleFonts.baiJamjuree(),
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.only(bottom: 0, right: 0),
        background: SizedBox.expand(
          child: Image.asset(
            'assets/img/joix-photo-mobile.jpg',
            fit: BoxFit.cover,
          ),
        ),
        title: Stack(
          children: [
            SizedBox.expand(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0.7, 1],
                    colors: [
                      Colors.transparent,
                      colors.canvasColor
                    ],
                  ),
                ),
              ),
            ),
            SizedBox.expand(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.topLeft,
                    stops: const [0.1, 1],
                    colors: [
                      Colors.transparent,
                      colors.canvasColor
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 15,
              child: CustomGradientText(
                '¡Hola! Soy Jonatan ',
                style: GoogleFonts.baiJamjuree(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
