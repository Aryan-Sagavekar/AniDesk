import "package:animal_desk_app/widgets/cards.dart";
import "package:animal_desk_app/widgets/color_nature.dart";
import 'package:animal_desk_app/widgets/animal_emoji.dart';
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
        height: 700,
        padding: const EdgeInsets.only(top: 60),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  style: const TextStyle(
                    color: ColorNature.midnightGreen,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: ColorNature.mantis,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'eg: Cheetah',
                    hintStyle: const TextStyle(
                      color: ColorNature.dartMouthGreen,
                      fontSize: 20,
                    ),
                    prefixIcon: const Icon(Icons.search),
                    iconColor: ColorNature.dartMouthGreen,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Discover',
                style: TextStyle(
                  fontSize: 27,
                  letterSpacing: 5,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const SingleChildScrollView(
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
                      txt: 'Tiger',
                      image: 'tiger',
                    ),
                    MyCard(
                      txt: 'Elephant',
                      image: 'elephant',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'What you Saw',
                style: TextStyle(
                  fontSize: 27,
                  letterSpacing: 5,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Animogi(
                    image: 'tiger',
                  ),
                  Animogi(
                    image: 'elephant',
                  ),
                  Animogi(
                    image: 'cheetah',
                  ),
                  Animogi(
                    image: 'rhino',
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Explore Ancient Wildlife',
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 5,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
