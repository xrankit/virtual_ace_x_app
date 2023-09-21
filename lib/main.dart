import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'user_profile_page.dart';
import 'starting_page.dart';
// Import other dependencies and custom files as needed

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Name',
      theme: ThemeData(
        // Define your app's theme here
      ),
      // Define initial route or home page
      initialRoute: '/boarding', 
      routes: {
        '/boarding': (context) => const StartingPage(),
        '/login': (context) => const LoginPage(),
        '/user_profile': (context) => const UserProfilePage(),
        '/home': (context) => HomePage(),
        // Add routes for other screens/pages as needed
      },
    );
  }
}

class StatingPage {
}
