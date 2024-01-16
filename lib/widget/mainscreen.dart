import 'package:flutter/material.dart';
import 'package:testpro2/widget/signup.dart';
import 'package:testpro2/widget/login.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppState(),
    );
  }
}

class MyAppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set your desired background color
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/image/logo.png',
            width: 600,
            height: 300,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 13.0),
          Text(
            'Welcome Back !',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple[800],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40), // Added SizedBox for spacing
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.deepPurple[400],
              onPrimary: Colors.white,
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 64),
              child: Text(
                'Log in',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          SizedBox(height: 13),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUpScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.deepPurple[400],
              onPrimary: Colors.white,
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 58),
              child: Text(
                'Sign up',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
