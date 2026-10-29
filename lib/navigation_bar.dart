import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'scouting_screen.dart';
class NavigationBarBottom extends StatefulWidget {
  const NavigationBarBottom({super.key});

  @override
  State<NavigationBarBottom> createState() => _NavigationBarBottomState();
}

class _NavigationBarBottomState extends State<NavigationBarBottom> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.remove_red_eye),
            label: 'Scouting',
          ),
        ],
      ),
      body: <Widget>[

        MyStaticGrid(),
      ][currentPageIndex],
    );
  }
}

