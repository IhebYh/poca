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
        title: Text("Create an account"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("What's your date of birth ?"),
          DatePickerDialog(
              firstDate: DateTime(2012, 6, 16), lastDate: DateTime(1999, 5, 3)),
          ElevatedButton(onPressed: () => {}, child: const Text("Next")),
        ],
      ),
    );
  }
}
