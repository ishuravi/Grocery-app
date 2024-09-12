import 'package:flutter/material.dart';
import '../colors/colors.dart';

class Recommended extends StatelessWidget {
  // List of image paths
  final List<String> imagePaths = [
    'assets/snacks/snack1.png',
    'assets/dairy/dairy1.png',
    'assets/fruits/fruit1.png',
    'assets/vegies/vegies1.png',
  ];

  // List of prices
  final List<String> prices = [
    '₹150',
    '₹120',
    '₹90',
    '₹200',
  ];

  // List of item names
  final List<String> names = [
    'Biscuit',
    'Paneer',
    'Mango',
    'Carrot',
    'Donut',
    'Apple',
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
            Text(
              'Recommended Products',
              style: TextStyle(
                color: AppColors.Text, // Color for the title
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10.0),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 20.0,
                childAspectRatio: 0.8, // Adjust this value as needed
              ),
              itemCount: imagePaths.length,
              itemBuilder: (context, index) {
                // Pass image path, price, and name to the item builder
                return _buildTrendingItem(
                  context,
                  imagePaths[index],
                  prices[index],
                  names[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTrendingItem(
      BuildContext context, String imagePath, String price, String name) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
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
                  width: 90,
                  height: 100, // Adjusted height of the image container
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
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name, // Display dynamic item name
                  style: TextStyle(
                    color: AppColors.Text,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.0), // Reduced space between name and price
                Text(
                  price, // Display dynamic price
                  style: TextStyle(
                    color: AppColors.textBlue,
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(height: 10.0), // Space between price and button
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle add to cart action
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.blue, backgroundColor: Colors.white, // Text color
                      side: BorderSide(color: Colors.blue, width: 2.0), // Blue border with increased width
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0), // Rounded corners
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 2.0), // Adjust button size with padding
                    ),
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
