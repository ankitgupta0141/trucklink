import 'package:flutter/material.dart';
import 'login_page.dart';  // Import the login page file

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // TruckLink logo
            Image.asset(
              'assets/logo.png',  // Ensure the logo image exists in assets folder
              height: 150,
            ),
            SizedBox(height: 20),
            // App name
            const Text(
              'TruckLink',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            // Circular progress indicator for loading effect
            CircularProgressIndicator(
              color: Colors.black,
            ),
            SizedBox(height: 40),
            // Button to navigate to Login Page
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),  // Navigate to LoginPage
                );
              },
              child: Text('NEXT'),  // Button text
            ),
          ],
        ),
      ),
    );
  }
}
