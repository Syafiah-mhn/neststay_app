import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String username;

  HomeScreen({required this.username});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;

  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysShow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome, ${widget.username}!'),
      ),
      bottomNavigationBar: NavigationBar(
        labelBehavior: labelBehavior,
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite),
            label: 'Favourite',
          ),
          NavigationDestination(
             icon: Icon(Icons.history),
            label: 'History',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),

    );
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        // Home Page
        return Center(
          child: Text('Home Page for ${widget.username}'),
        );
      case 1:
        // Favourite Page
        return Center(
          child: Text('Favourite Page for ${widget.username}'),
        );
      case 2:
        // History Page
        return Center(
          child: Text('History Page for ${widget.username}'),
        );
      case 3:
        // Profile Page
        return Center(
          child: Text('Profile Page for ${widget.username}'),
        );
      default:
        return Container();
    }
  }
}
