import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import GetX

// Controller to manage state for HomeScreen
class HomeController extends GetxController {
  var selectedIndex = 0.obs; // Reactive variable to track selected index
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize HomeController with Get.put so it's available throughout the widget tree
    final HomeController _controller = Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      bottomNavigationBar: Obx(() => NavigationBar(
            selectedIndex:
                _controller.selectedIndex.value, // Bind selected index
            onDestinationSelected: (int index) {
              _controller.selectedIndex.value =
                  index; // Update index in controller
            },
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: "Home"),
              NavigationDestination(icon: Icon(Icons.search), label: "Search"),
              NavigationDestination(
                  icon: Icon(Icons.library_books), label: "Library")
            ],
          )),
      body: Obx(() {
        // Based on the selected index, display content
        switch (_controller.selectedIndex.value) {
          case 0:
            return Center(child: const Text("Home Screen Content"));
          case 1:
            return Center(child: const Text("Search Screen Content"));
          case 2:
            return Center(child: const Text("Library Screen Content"));
          default:
            return const Center(child: Text("Select a tab"));
        }
      }),
    );
  }
}
