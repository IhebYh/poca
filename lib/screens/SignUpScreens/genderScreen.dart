import 'package:flutter/material.dart';
import 'package:poca/consts/app_colors.dart';

class genderScreen extends StatefulWidget {
  const genderScreen({super.key});

  @override
  State<genderScreen> createState() => _genderScreenState();
}

class _genderScreenState extends State<genderScreen> {
  int _selectedIndex =
      -1; // Tracks which button is selected, -1 means none is selected

  void _onButtonPressed(int index) {
    setState(() {
      // If the same button is pressed again, deselect it
      if (_selectedIndex == index) {
        _selectedIndex = -1; // Deselect if already selected
      } else {
        _selectedIndex = index; // Select the new button
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Create an account",
          style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20.0),
                Text("What's your gender ?"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10.0),
                    backgroundColor: _selectedIndex == 0
                        ? AppColors.primary
                        : Colors.transparent,
                    side: const BorderSide(
                      color: AppColors.primary,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  onPressed: () => _onButtonPressed(0),
                  child: const Text("Female", style: TextStyle(fontSize: 15.0)),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10.0),
                    backgroundColor: _selectedIndex == 1
                        ? AppColors.primary
                        : Colors.transparent,
                    side: const BorderSide(
                      color: AppColors.primary,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  onPressed: () => _onButtonPressed(1),
                  child: const Text("Male", style: TextStyle(fontSize: 15.0)),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10.0),
                    backgroundColor: _selectedIndex == 2
                        ? AppColors.primary
                        : Colors.transparent,
                    side: const BorderSide(
                      color: AppColors.primary,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  onPressed: () => _onButtonPressed(2),
                  child: const Text("Prefer not to say",
                      style: TextStyle(fontSize: 15.0)),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
                onPressed: () =>
                    {Navigator.pushNamed(context, '/signUpScreen')},
                child: const Text("Next")),
          ],
        ),
      ),
    );
  }
}
