import 'package:bengkel_online/pages/edit_profile_page.dart';
import 'package:bengkel_online/pages/home/main_page.dart';
import 'package:bengkel_online/pages/home/profile_page.dart';
import 'package:bengkel_online/pages/sign_in_page.dart';
import 'package:bengkel_online/pages/sign_up_page.dart';
import 'package:bengkel_online/pages/splash_page.dart';
import 'package:bengkel_online/widgets/maps_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/home': (context) => const MainPage(),
        '/profile': (context) => const ProfilePage(),
        '/edit-profile': (context) => const EditProfilePage(),
        '/maps': (context) => MapsScreen(),
      },
    );
  }
}
