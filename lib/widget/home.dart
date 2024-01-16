import 'package:flutter/material.dart';
//import 'login.dart';
//import 'signup.dart';


class HomeScreen extends StatelessWidget {
  final String username;

  HomeScreen({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome, $username!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the HomeScreen, $username!',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add your desired functionality here
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
