import 'package:flutter/material.dart';

class passwordScreen extends StatefulWidget {
  const passwordScreen({super.key});

  @override
  State<passwordScreen> createState() => _passwordScreenState();
}

class _passwordScreenState extends State<passwordScreen> {
  TextEditingController _passwordController = TextEditingController();
  bool _isObscured = true;
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20.0),
                Text(
                  "What's your password ?",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 5.0),
            TextField(
              controller: _passwordController,
              obscureText: _isObscured, // Hide the text for passwords
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(
                    _isObscured ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscured = !_isObscured; // Toggle visibility
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
                onPressed: () => {Navigator.pushNamed(context, '/dateScreen')},
                child: const Text("Next")),
          ],
        ),
      ),
    );
  }
}
