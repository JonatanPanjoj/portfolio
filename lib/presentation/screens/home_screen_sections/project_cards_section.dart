import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/widgets.dart';

class ProjectCardsSection extends StatelessWidget {
  const ProjectCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final TextStyle titleStyle =
        TextStyle(fontSize: size.width * 0.042, fontWeight: FontWeight.bold);

    return SliverToBoxAdapter(
      child: Column(
        children: [
          Container(
            width: size.width,
            decoration: BoxDecoration(color: colors.cardColor),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100.0, vertical: 25),
              child: CustomGradientText(
                'Selected Projects',
                style: titleStyle,
              ),
            ),
          ),
          const SizedBox(height: 50),
          const HorizontalImageAndDescription(
            title: 'Cinemapedia',
            description: 'Una app en la que puedes ver información sobre tus películas favoritas, como actores, año de lanzamiento. Puedes buscar por categorias y guardas las que prefieras.',
            image: 'assets/img/cinemapedia.png',
            fit: BoxFit.fitHeight,
            swipe: true,
          ),
          const HorizontalImageAndDescription(
            title: 'Widgets App',
            description: 'Una aplicación donde se exiben muchos tipos de widgets de flutter, utilizando material 3. Se aplica el cambio de temas dinamico dark & light y por colores.',
            image: 'assets/img/widgets-app.png',
            fit: BoxFit.fitHeight,
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
