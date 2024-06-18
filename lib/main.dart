import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'login_page.dart';
import 'splash_screen.dart';
import 'onboarding_screen.dart';  // Import the onboarding screen
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp(userId: ''));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required String userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Connect',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(userId: ''),  // Start with the splash screen
      routes: {
        '/onboarding': (context) => const OnboardingScreen(),  // Define the route for the onboarding screen
        '/login': (context) => const LoginPage(),  // Define the route for the login page
        // Add more routes here as needed
      },
    );
  }
}
