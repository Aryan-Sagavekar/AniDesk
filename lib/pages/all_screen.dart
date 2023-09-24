import "package:animal_desk_app/pages/home_page.dart";
import 'package:animal_desk_app/pages/explore_page.dart';
import "package:animal_desk_app/widgets/color_nature.dart";
import "package:animal_desk_app/widgets/icons_bottom_bar.dart";
import "package:flutter/material.dart";

class AllScreen extends StatefulWidget {
  const AllScreen({super.key});

  @override
  State<AllScreen> createState() => _AllScreenState();
}

class _AllScreenState extends State<AllScreen> {
  int _selectedIndex = 0;

  final screens = const [
    Center(
      child: HomePage(),
    ),
    Center(
      child: ExplorePage(),
    ),
    Center(
      child: Text('3'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: screens[_selectedIndex],
        bottomNavigationBar: Container(
          height: 60,
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(width: 2, color: ColorNature.mantis),
              borderRadius: BorderRadius.circular(24),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(
                    6.0,
                    6.0,
                  ),
                  blurRadius: 7.0,
                  spreadRadius: 0.05,
                ), //BoxShadow
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ), //BoxShadow
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconBottomBar(
                text: 'Home',
                icon: Icons.home_outlined,
                selected: _selectedIndex == 0,
                onPressed: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
              ),
              IconBottomBar(
                text: 'Search',
                icon: Icons.assistant_navigation,
                selected: _selectedIndex == 1,
                onPressed: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
              ),
              IconBottomBar(
                text: 'Favorites',
                icon: Icons.favorite_outline,
                selected: _selectedIndex == 2,
                onPressed: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                },
              ),
            ],
          ),
        ));
  }
}
