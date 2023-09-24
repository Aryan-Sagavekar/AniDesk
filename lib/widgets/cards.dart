import "package:animal_desk_app/pages/info_page.dart";
import "package:flutter/material.dart";

class MyCard extends StatelessWidget {
  final txt;
  final image;

  const MyCard({
    super.key,
    this.txt = 'NA',
    this.image = 'elephant',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300, // Set the desired height
      width: 200, // Set the desired width
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 2),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => InfoPage(
                        animalName: txt,
                      )));
        },
        child: Card(
          color: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 8,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('assets/images/$image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  txt,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
