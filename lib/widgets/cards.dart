import "package:animal_desk_app/widgets/color_nature.dart";
import "package:flutter/material.dart";

class MyCard extends StatelessWidget {
  final txt;
  final image;
  const MyCard({super.key, this.txt = 'NA', this.image = 'elephant'});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 7,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
        child: Column(children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/$image.jpg'),
            radius: 40,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            txt,
            style: TextStyle(fontSize: 20),
          )
        ]),
      ),
    );
  }
}
