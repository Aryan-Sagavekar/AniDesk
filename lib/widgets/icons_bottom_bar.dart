import "package:animal_desk_app/widgets/color_nature.dart";
import "package:flutter/material.dart";

class IconBottomBar extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  const IconBottomBar({
    super.key,
    required this.text,
    required this.icon,
    this.selected = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              size: 30,
              color: selected ? ColorNature.mantis : ColorNature.midnightGreen,
            )),
        Text(
          text,
          style: TextStyle(
              fontSize: 12,
              height: 0.1,
              color: selected ? Colors.transparent : Colors.transparent),
        )
      ],
    );
  }
}
