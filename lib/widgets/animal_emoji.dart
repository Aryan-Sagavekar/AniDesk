import "package:animal_desk_app/widgets/color_nature.dart";
import "package:flutter/material.dart";

class Animogi extends StatelessWidget {
  final image;
  const Animogi({super.key, this.image = 'elephant'});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 65,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 2, color: ColorNature.midnightGreen),
          image: DecorationImage(
            image: AssetImage('assets/icons/$image.png'),
            fit: BoxFit.fill,
          )),
      // radius: 40,
      // backgroundImage: AssetImage('assets/icons/$image.png'),
    );
  }
}
