import 'package:flutter/material.dart';
import 'package:poca/consts/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Text("Pocca."),
      ),
    ));
  }
}
