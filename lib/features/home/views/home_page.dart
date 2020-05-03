import 'package:covstats/features/education/views/education_page.dart';
import 'package:covstats/features/faqs/views/faqs_page.dart';
import 'package:covstats/features/shared/app_colors.dart';
import 'package:covstats/features/statistics/views/statistics_page.dart';
import 'package:covstats/features/world_map/views/world_map_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> pages = [
    StatisticsPage(),
    WorldMapPage(),
    EducationPage(),
    FAQsPage(),
  ];

  int _selectedIndex = 0;

  Widget _bottomNavigationBar(int selectedIndex) => BottomNavigationBar(
        onTap: (int index) => setState(() => _selectedIndex = index),
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: AppColors.primaryFadeRed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.map), title: Text('Map')),
          BottomNavigationBarItem(
              icon: Icon(Icons.book), title: Text('Education')),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark), title: Text('FAQs')),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          children: pages,
          index: _selectedIndex,
        ),
        bottomNavigationBar: _bottomNavigationBar(_selectedIndex));
  }
}
