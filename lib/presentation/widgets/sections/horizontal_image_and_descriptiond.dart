import 'package:flutter/material.dart';

class HorizontalImageAndDescription extends StatelessWidget {
  final bool swipe;

  const HorizontalImageAndDescription({super.key, this.swipe = false});

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
          if (!swipe)
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              child: Image.asset(
                'assets/img/joix.jpg',
                width: size.width * 0.28,
                height: size.width * 0.28,
                fit: BoxFit.cover,
              ),
            ),
          Container(
            padding: const EdgeInsets.only(left: 50),
            width: size.width * 0.5,
            child: Column(
              children: [
                Text(
                  'Project 1',
                  style: titleStyle,
                ),
                const SizedBox(height: 20,),
                Text(
                  'Officia deserunt nostrud culpa anim nulla velit ipsum enim ea. Veniam nisi mollit esse excepteur voluptate nulla officia eu nulla laborum amet do. Eiusmod do irure Lorem ut ullamco quis. Anim nostrud adipisicing Lorem in aliqua culpa. Proident velit duis anim ipsum non irure ut incididunt non anim. ',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: size.width * 0.013),
                )
              ],
            ),
          ),
          if (swipe)
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              child: Image.asset(
                'assets/img/joix.jpg',
                width: size.width * 0.28,
                height: size.width * 0.28,
                fit: BoxFit.cover,
              ),
            ),
        ],
      ),
    );
  }
}
