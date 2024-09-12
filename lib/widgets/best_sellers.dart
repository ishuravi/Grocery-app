import 'package:flutter/material.dart';
import '../colors/colors.dart';

class BestSellers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: BorderSide(
          color: Colors.grey, // Gray border color
          width: 1.0, // Border width
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best Sellers',
                  style: TextStyle(
                    color: AppColors.Text,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle "View all" tap
                  },
                  child: Text(
                    'View all',
                    style: TextStyle(
                      color: AppColors.textBlue,  // Text color
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildCategoryItem(context, 'Dairy products'),
                  _buildCategoryItem(context, 'Vegetables'),
                  _buildCategoryItem(context, 'Fruits'),
                  _buildCategoryItem(context, 'Snacks'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryItem(BuildContext context, String categoryName) {
    // Define the image paths for each category
    final List<String> imagePaths = _getImagePathsForCategory(categoryName);

    // Determine the number of images
    final int imageCount = imagePaths.length;

    // Create a list of widgets for the images and the "+N" indicator
    final List<Widget> imageWidgets = _buildImageWidgets(imagePaths);

    // Add the "+N" indicator if there are more than 3 images
    if (imageCount > 3) {
      imageWidgets.add(
        Container(
          color: Colors.black.withOpacity(0.6),
          child: Center(
            child: Text(
              '+${imageCount - 3}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.only(right: 16.0), // Add spacing between items
      child: Column(
        children: [
          CircleAvatar(
              radius: 50.0, // Adjust size of CircleAvatar
              backgroundColor: Colors.grey[300], // Gray background color
              child: Container(
                width: 55.0,  // Adjust width of CircleAvatar container
                height: 55.0,
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.zero,
                  crossAxisSpacing: 1.0,
                  mainAxisSpacing: 1.0,
                  childAspectRatio: 1.0, // Adjust the aspect ratio of each grid cell
                  children: imageWidgets,
                ),
              ),
            ),

          SizedBox(height: 8.0),
          Text(
            categoryName,
            style: TextStyle(
              color: AppColors.Text,
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          _buildSeeAllButton(context, 'See all'),
        ],
      ),
    );
  }

  // Helper method to build image widgets
  List<Widget> _buildImageWidgets(List<String> imagePaths) {
    List<Widget> widgets = [];
    for (int i = 0; i < imagePaths.length && i < 3; i++) {
      widgets.add(
        Image.asset(
          imagePaths[i],
          fit: BoxFit.cover,
        ),
      );
    }
    return widgets;
  }

  // Helper method to get image paths based on category
  List<String> _getImagePathsForCategory(String categoryName) {
    switch (categoryName) {
      case 'Dairy products':
        return ['assets/dairy/dairy1.png', 'assets/dairy/dairy2.png', 'assets/dairy/dairy3.png', 'assets/dairy/dairy4.png'];
      case 'Vegetables':
        return ['assets/vegies/vegies1.png', 'assets/vegies/vegies2.png', 'assets/vegies/vegies3.png', 'assets/vegies/vegies4.png'];
      case 'Fruits':
        return ['assets/fruits/fruit1.png', 'assets/fruits/fruit2.png', 'assets/fruits/fruit3.png', 'assets/fruits/fruit4.png'];
      case 'Snacks':
        return ['assets/snacks/snack1.png', 'assets/snacks/snack2.png', 'assets/snacks/snack3.png', 'assets/snacks/snack4.png'];
      default:
        return [];
    }
  }

  Widget _buildSeeAllButton(BuildContext context, String label) {
    return TextButton(
      onPressed: () {
        // Handle See All button press
      },
      style: TextButton.styleFrom(
        foregroundColor: AppColors.textColor, backgroundColor: Colors.transparent,  // Text color
        side: BorderSide(
          color: AppColors.border, // Border color
          width: 2.0, // Border width
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: AppColors.textBlue,  // Text color
          fontSize: 12.0,
        ),
      ),
    );
  }
}
