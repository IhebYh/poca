import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: Colors.white,
        //   title: Text(
        //     'Podcast',
        //     style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        //   ),
        //   actions: [
        //     IconButton(
        //       icon: Icon(Icons.search, color: Colors.black),
        //       onPressed: () {
        //         // Use GetX for navigation if needed
        //         Get.snackbar("Search", "Search button clicked");
        //       },
        //     ),
        //   ],
        // ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top Banner
                Stack(
                  children: [
                    Container(
                      height: 145,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.purple,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Enjoy Top Podcast',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'Listen Favourite Podcast',
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                    onPressed: () {
                                      Get.snackbar(
                                        "Play Now",
                                        "Playing your favorite podcast",
                                        snackPosition: SnackPosition.BOTTOM,
                                      );
                                    },
                                    child: Text(
                                      'Play Now',
                                      style: TextStyle(color: Colors.purple),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                  'assets/podcast_image.jpg'), // Replace with your image asset
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),

                // Categories Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Category',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(() => CategoriesPage()); // Example of navigation
                      },
                      child: Text('See All'),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildCategoryIcon(Icons.videogame_asset, 'Gaming'),
                    _buildCategoryIcon(Icons.palette, 'Arts'),
                    _buildCategoryIcon(Icons.shopping_bag, 'Fashion'),
                    _buildCategoryIcon(Icons.flight, 'Travel'),
                  ],
                ),
                SizedBox(height: 24),

                // Continue Listening Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Continue Listening',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(() =>
                            ContinueListeningPage()); // Example of navigation
                      },
                      child: Text('See All'),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                _buildPodcastCard(
                  title: 'EP : 321 | The Ultimate Fashion Playground',
                  author: 'Max Podcasterson',
                  progress: 0.8,
                ),
                SizedBox(height: 24),

                // Recommended Podcasts Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended Podcast',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(
                            () => RecommendedPage()); // Example of navigation
                      },
                      child: Text('See All'),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                _buildPodcastCard(
                  title: 'EP : 024 | Profitable Strategies Unveiled',
                  author: 'John Doe',
                  progress: 0.5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryIcon(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.purple.shade100,
          child: Icon(icon, color: Colors.purple),
        ),
        SizedBox(height: 8),
        Text(label),
      ],
    );
  }

  Widget _buildPodcastCard({
    required String title,
    required String author,
    required double progress,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.purple.shade100,
              child: Icon(Icons.mic, color: Colors.purple),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 8),
                  Text(
                    author,
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 8),
                  LinearProgressIndicator(
                    value: progress,
                    backgroundColor: Colors.grey.shade300,
                    color: Colors.purple,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Example pages for navigation
class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Categories')),
      body: Center(child: Text('Categories Page')),
    );
  }
}

class ContinueListeningPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Continue Listening')),
      body: Center(child: Text('Continue Listening Page')),
    );
  }
}

class RecommendedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recommended Podcasts')),
      body: Center(child: Text('Recommended Podcasts Page')),
    );
  }
}
