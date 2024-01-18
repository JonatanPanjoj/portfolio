import 'package:flutter/material.dart';

class CuoteSection extends StatelessWidget {
  const CuoteSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final TextStyle titleStyle =
        TextStyle(fontSize: size.width * 0.042, fontWeight: FontWeight.bold);
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 25),
        child: Center(
          child: Column(
            children: [
              Text(
                'Transformando ideas en experiencias móviles excepcionales:',
                textAlign: TextAlign.center,
                style: titleStyle,
              ),
              Text(
                '¡Diseñando el futuro, una app a la vez!',
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
