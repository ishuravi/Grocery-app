import 'package:flutter/material.dart';
import '../colors/colors.dart';

class ShopByStore extends StatelessWidget {
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
            // Title and View All button in a row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shop by Store',
                  style: TextStyle(
                    color: AppColors.textBlue, // Color for the title
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Action for "View All" button
                    // You can navigate to a new page or show a dialog here
                  },
                  child: Text(
                    'View All',
                    style: TextStyle(
                      color: AppColors.textBlue, // Color for the button text
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
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
