import "package:animal_desk_app/widgets/cards.dart";
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
    return Scaffold(
      body: Container(
        height: 800,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              ColorNature.emerald.withOpacity(0.1),
              ColorNature.emerald.withOpacity(0.2),
            ],
            center: Alignment.center,
            radius: 0.7,
          ),
        ),
        child: Container(
          height: 400,
          padding: EdgeInsets.only(top: 120),
          child: const SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Discover',
                style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 5,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MyCard(
                      txt: 'Elephant',
                      image: 'elephant',
                    ),
                    MyCard(
                      txt: 'Cheetah',
                      image: 'cheetah',
                    ),
                    MyCard(
                      txt: 'Elephant',
                      image: 'elephant',
                    ),
                    MyCard(
                      txt: 'Elephant',
                      image: 'elephant',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
