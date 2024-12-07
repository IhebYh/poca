import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import GetX
import 'package:poca/controllers/signInControllers/dateController.dart';

class dateScreen extends StatelessWidget {
  const dateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final DateController _controller =
        Get.put(DateController()); // Create and initialize the controller

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
                Text("What's your date of birth?"),
              ],
            ),
            Obx(() => TextField(
                  controller: TextEditingController(
                      text: _controller.selectedDate
                          .value), // Bind the date controller to the text field
                  decoration: const InputDecoration(
                    filled: true,
                    prefixIcon: Icon(Icons.calendar_today),
                  ),
                  readOnly: true,
                  onTap: () {
                    _selectDate(context,
                        _controller); // Pass the controller to the method
                  },
                )),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () =>
                  Get.toNamed('/genderScreen'), // Use GetX for navigation
              child: const Text("Next"),
            ),
          ],
        ),
      ),
    );
  }

  // Function to select the date
  Future<void> _selectDate(
      BuildContext context, DateController controller) async {
    DateTime? _picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (_picked != null) {
      controller.selectedDate.value = _picked
          .toString()
          .split(" ")[0]; // Update the selected date in the controller
    }
  }
}
