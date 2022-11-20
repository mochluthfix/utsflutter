import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:tugasflutter/pages/account_page.dart';
import 'package:tugasflutter/pages/counter_page.dart';
import 'package:tugasflutter/pages/feed_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) => setState(() => _currentIndex = index),
          children: [
            Container(color: Colors.red),
            const CounterPage(),
            const FeedPage(),
            Container(color: Colors.brown),
            const AccountPage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: false,
        itemCornerRadius: 5,
        curve: Curves.easeIn,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(_currentIndex);
        },
        items: [
          BottomNavyBarItem(
            icon: const Icon(Icons.apps),
            title: const Text('Home'),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.my_library_books),
            title: const Text('Biography'),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.feed),
            title: const Text('Feed'),
            activeColor: Colors.green,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.message),
            title: const Text('Message'),
            activeColor: Colors.brown,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.calendar_month),
            title: const Text('Calendar'),
            activeColor: Colors.yellow,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}