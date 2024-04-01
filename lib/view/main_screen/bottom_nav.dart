import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ripplex/controller/bottom_nav_provider.dart';
import 'package:ripplex/view/screens/add_post_screen.dart';
import 'package:ripplex/view/screens/home_screen.dart';
import 'package:ripplex/view/screens/profile_screen.dart';
import 'package:ripplex/view/screens/search_screen.dart';

class BottomNavScreen extends StatelessWidget {
  BottomNavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BottomNavProvider>(context);
    final screens = [
      const HomeScreen(),
      const SearchScreen(),
      const AddPostScreen(),
      const ProfileScreen(),
    ];
    return Scaffold(
      body: screens[provider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        
        currentIndex: provider.currentIndex,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home_filled),
            backgroundColor: Colors.purple[900],
          ),
          BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search),
              backgroundColor: Colors.purple[900]),
          BottomNavigationBarItem(
              label: "Post",
              icon: Icon(Icons.add_box_outlined),
              backgroundColor: Colors.purple[900]),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person),
            backgroundColor: Colors.purple[900],
          ),
        ],
        onTap: (newIndex) {
          provider.setCurrentIndex(newIndex);
        },
      ),
    );
  }
}
