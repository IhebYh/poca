import 'package:flutter/material.dart';

class genderScreen extends StatefulWidget {
  const genderScreen({super.key});

  @override
  State<genderScreen> createState() => _genderScreenState();
}

class _genderScreenState extends State<genderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Create an account"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("What's your gender ?"),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(onPressed: () => {}, child: Text("Male")),
              ElevatedButton(onPressed: () => {}, child: Text("Female")),
              ElevatedButton(
                  onPressed: () => {}, child: Text("I prefer not to say")),
            ],
          ),
        ],
      ),
    );
  }
}
