import 'package:flutter/material.dart';
import 'user_profile_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add login options here (Google login, mobile number login)
            ElevatedButton(
              onPressed: () {
                // Handle Google login
              },
              child: const Text('Login with Google'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle mobile number login
              },
              child: const Text('Login with Mobile Number'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to user profile page if new user
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const UserProfilePage()),
                );
              },
              child: const Text('Create Account'),
            ),
          ],
        ),
      ),
    );
  }
}
