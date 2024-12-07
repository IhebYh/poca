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
                  "What's your email ?",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 5.0),
            TextField(
              decoration: InputDecoration(contentPadding: EdgeInsets.all(20.0)),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 20.0),
                Text("You need to verify this email later.",
                    style: TextStyle(fontSize: 10.0))
              ],
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
                onPressed: () =>
                    {Navigator.pushNamed(context, '/passwordScreen')},
                child: const Text("Next")),
          ],
        ),
      ),
    );
  }
}
