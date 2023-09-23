import "package:animal_desk_app/pages/home_page.dart";
import "package:animal_desk_app/pages/search_page.dart";
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

  final screens = [
    Center(
      child: HomePage(),
    ),
    Center(
      child: SearchPage(),
    ),
    Center(
      child: Text('3'),
    ),
    Center(
      child: Text('4'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: screens[_selectedIndex],
        bottomNavigationBar: SizedBox(
          height: 80,
          child: Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(width: 3, color: ColorNature.mantis),
                borderRadius: BorderRadius.circular(24)),
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
                  icon: Icons.search_outlined,
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
                IconBottomBar(
                  text: 'Profile',
                  icon: Icons.supervised_user_circle,
                  selected: _selectedIndex == 3,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 3;
                    });
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
