import 'package:flutter/material.dart';
import '../colors/colors.dart';

class Trending extends StatelessWidget {
  // List of image paths
  final List<String> imagePaths = [
    'assets/snacks/snack1.png',
    'assets/dairy/dairy1.png',
    'assets/fruits/fruit1.png',
    'assets/vegies/vegies1.png',
    'assets/snacks/snack2.png',
    'assets/fruits/fruit2.png',
  ];

  // List of prices
  final List<String> prices = [
    '₹150',
    '₹120',
    '₹90',
    '₹200',
    '₹160',
    '₹80',
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
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Trending in ',
                      style: TextStyle(
                        color: AppColors.Text, // Black color
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'City',
                      style: TextStyle(
                        color: AppColors.textBlue, // Blue color
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 20.0,
                childAspectRatio: 0.6,
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
                  width: 60,
                  height: 90,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Item name and price
                Column(
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
                    SizedBox(height: 5.0),
                    Text(
                      price, // Display dynamic price
                      style: TextStyle(
                        color: AppColors.textBlue,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
                // Add button with blue border
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 15),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.border),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Text(
                      "ADD",
                      style: TextStyle(
                        color: AppColors.textBlue,
                        fontSize: 10.0,
                      ),
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
