import 'package:flutter/material.dart';

class passwordScreen extends StatefulWidget {
  const passwordScreen({super.key});

  @override
  State<passwordScreen> createState() => _passwordScreenState();
}

class _passwordScreenState extends State<passwordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Create an account"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Create your password: "),
          TextField(
            decoration: const InputDecoration(labelText: 'Password'),
          ),
          ElevatedButton(onPressed: () => {}, child: const Text("Next")),
        ],
      ),
    );
  }
}
