import 'package:flutter/material.dart';
import 'package:poca/consts/app_colors.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const FlutterLogo(),
            const Text("Your Podcast Journey Begins Here !",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: () => {}, child: const Text("Sign Up For Free")),
                ElevatedButton(
                    onPressed: () => {},
                    child: const Text("Continue With Google")),
                ElevatedButton(
                    onPressed: () => {},
                    child: const Text("Continue With Facebook")),
                TextButton(onPressed: () => {}, child: const Text("Log in"))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
