import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poca/screens/homeScreen.dart';

class LoginController extends GetxController {
  var username = ''.obs;
  var password = ''.obs;
  var errorMessage = ''.obs;

  void login() async {
    errorMessage.value = ''; // Clear previous error message

    // Simulate a network request
    await Future.delayed(const Duration(seconds: 2));

    if (username.value == 'admin' && password.value == 'password') {
      // Successful login, navigate to HomeScreen
      Get.off(() =>
          HomeScreen()); // Use Get.off to remove the login page from the navigation stack
    } else {
      // Failed login
      errorMessage.value = 'Invalid username or password';
    }
  }
}

class LoginPage extends StatelessWidget {
  final LoginController _controller =
      Get.put(LoginController()); // Create and initialize the controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Username input field (no need for Obx, as it doesn't change from outside)
            TextField(
              onChanged: (value) => _controller.username.value =
                  value, // Update username in controller
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            // Password input field (no need for Obx, as it doesn't change from outside)
            TextField(
              onChanged: (value) => _controller.password.value =
                  value, // Update password in controller
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 20),
            // Error message display (wrap with Obx as it's dependent on an observable variable)
            Obx(() {
              if (_controller.errorMessage.value.isNotEmpty) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    _controller.errorMessage.value,
                    style: const TextStyle(color: Colors.red),
                  ),
                );
              }
              return SizedBox.shrink(); // Return an empty widget if no error
            }),
            const SizedBox(height: 20.0),
            // Login button
            ElevatedButton(
              onPressed: _controller.login,
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
