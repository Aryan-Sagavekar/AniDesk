import "package:animal_desk_app/widgets/color_nature.dart";
import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [
            ColorNature.emerald.withOpacity(0.5),
            ColorNature.emerald.withOpacity(0.3),
          ],
          center: Alignment.center,
          radius: 0.7,
        ),
      ),
      // You can add your content here
    );
  }
}
