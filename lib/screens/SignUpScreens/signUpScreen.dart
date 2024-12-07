import 'package:flutter/gestures.dart' show TapGestureRecognizer;
import 'package:flutter/material.dart';

class singUpScreen extends StatefulWidget {
  const singUpScreen({super.key});

  @override
  State<singUpScreen> createState() => _singUpScreenState();
}

class _singUpScreenState extends State<singUpScreen> {
  bool _isAccepted = false; // Track whether the checkbox is checked

  // Function to handle checkbox state change
  void _onCheckboxChanged(bool? value) {
    setState(() {
      _isAccepted = value ?? false; // Update the state when checkbox is changed
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
              children: [
                SizedBox(width: 20.0),
                Text("What's your name ?"),
              ],
            ),
            const TextField(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20.0),
                Text("This will show on your profile later.",
                    style: TextStyle(fontSize: 10.0))
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                Checkbox(
                  value: _isAccepted, // The state of the checkbox
                  onChanged: _onCheckboxChanged, // Handle change of state
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: 'I agree to the ',
                      children: [
                        TextSpan(
                          text: 'Terms of Use',
                          style: const TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('Terms of Use clicked');
                              // Open your Terms of Use page or show a dialog here
                            },
                        ),
                        TextSpan(
                          text: ' and ',
                        ),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Handle Privacy Policy click
                              print('Privacy Policy clicked');
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _isAccepted
                  ? () {
                      // Proceed with the action since the terms are accepted
                      print('Proceeding with terms accepted');
                    }
                  : null, // Disable the button if terms are not accepted
              child: Text('Sign In'),
            ),
            const SizedBox(width: 20.0),
          ],
        ),
      ),
    );
  }
}
