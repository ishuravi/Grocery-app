import 'package:flutter/material.dart';
import '../colors/colors.dart';

class Catogories extends StatelessWidget {
  // List of image paths for the first section
  final List<String> imagePaths1 = [
    'assets/snacks/snack1.png',
    'assets/dairy/dairy1.png',
    'assets/fruits/fruit1.png',
    'assets/vegies/vegies1.png',
    'assets/snacks/snack2.png',
    'assets/fruits/fruit2.png',
    'assets/dairy/dairy2.png',
    'assets/snacks/snack2.png',
  ];

  // List of item names for the first section
  final List<String> names1 = [
    'Biscuit',
    'Paneer',
    'Mango',
    'Carrot',
    'Donut',
    'Apple',
    'Ghee',
    'Butter',
  ];

  // List of image paths for the second section
  final List<String> imagePaths2 = [
    'assets/dairy/dairy3.png',
    'assets/fruits/fruit3.png',
    'assets/snacks/snack3.png',
    'assets/vegies/vegies3.png',

  ];

  // List of item names for the second section
  final List<String> names2 = [
    'Chips',
    'Cookies',
    'Nuts',
    'Popcorn',

  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: BorderSide(
          color: Colors.grey,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title for the first section
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Grocery & Kitchen',
                style: TextStyle(
                  color: AppColors.textBlue, // Black color
                  fontSize: 16.0,

                ),
              ),
            ),
            SizedBox(height: 10.0),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 20.0,
                childAspectRatio: 0.8,
              ),
              itemCount: imagePaths1.length,
              itemBuilder: (context, index) {
                // Pass image path and name to the item builder for the first section
                return _buildCategoryItem(
                  context,
                  imagePaths1[index],
                  names1[index],
                );
              },
            ),
            SizedBox(height: 10.0), // Add some space between the sections
            // Title for the second section
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Snacks & Beverages',
                style: TextStyle(
                  color: AppColors.textBlue, // Black color
                  fontSize: 16.0,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 20.0,
                childAspectRatio: 0.8,
              ),
              itemCount: imagePaths2.length,
              itemBuilder: (context, index) {
                // Pass image path and name to the item builder for the second section
                return _buildCategoryItem(
                  context,
                  imagePaths2[index],
                  names2[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryItem(
      BuildContext context, String imagePath, String name) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
              child: Center(
                child: Container(
                  width: 70,
                  height: 70,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
            child: Center(
              child: Text(
                name, // Display dynamic item name
                style: TextStyle(
                  color: AppColors.Text,
                  fontSize: 12.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
