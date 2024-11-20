import 'package:flutter/material.dart';

class emailScreen extends StatefulWidget {
  const emailScreen({super.key});

  @override
  State<emailScreen> createState() => _emailScreenState();
}

class _emailScreenState extends State<emailScreen> {
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
          const Text("What's your name ?"),
          // TODO: This contains a textfield having the name used in the first screen
          // + check box for the policies
          // + check box for term of use
          // + block screenshots in all registering screens
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("You need to verify this email later.",
                  style: TextStyle(fontSize: 10.0))
            ],
          ),
          ElevatedButton(onPressed: () => {}, child: const Text("Register")),
        ],
      ),
    );
  }
}
