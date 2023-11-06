import 'package:bengkel_online/pages/home/home_page.dart';
import 'package:bengkel_online/themes/themes.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Widget body() {
      return const HomePage();
    }

    return Scaffold(
      backgroundColor: bgLightColor,
      body: body(),
    );
  }
}
