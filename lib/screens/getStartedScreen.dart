import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poca/consts/app_colors.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const FlutterLogo(),
              const Text(
                "Your Podcast Journey",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              const Text(
                "Begins Here !",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              const SizedBox(height: 40.0),
              ElevatedButton(
                onPressed: () {
                  // Replace Navigator.pushNamed with Get.toNamed for routing
                  Get.toNamed('/emailScreen');
                },
                child: const Text("Sign Up For Free"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  side: const BorderSide(
                    color: AppColors.primary,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                onPressed: () {
                  // Handle Continue with Google action here
                  print('Continue with Google');
                },
                child: const Row(
                  children: [
                    Icon(Icons.abc),
                    Text("Continue With Google"),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  side: const BorderSide(
                    color: AppColors.primary,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                onPressed: () {
                  // Handle Continue with Facebook action here
                  print('Continue with Facebook');
                },
                child: const Row(
                  children: [
                    Icon(Icons.abc),
                    Text("Continue With Facebook"),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  // Handle Login action here
                  Get.toNamed('/signIn');
                  print('Log in');
                },
                child: const Text("Log in"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
