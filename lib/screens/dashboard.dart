import 'package:flutter/material.dart';
import '../colors/colors.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/catogories.dart';
import '../widgets/recommended.dart';
import '../widgets/shop_by_store.dart';
import '../widgets/silver_app_bar.dart';
import '../widgets/best_sellers.dart';
import '../widgets/trending.dart'; // Import Trending widget

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SilverAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                BestSellers(), // Add BestSellers card here
                Trending(),    // Add Trending card here
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0), // Apply border radius here
                    child: Image.asset(
                      'assets/banner.png', // Add the banner image here
                      fit: BoxFit.cover,   // Ensure the image fits within its container
                    ),
                  ),
                ),
                Catogories(), // Add Categories card here
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0), // Apply border radius here
                    child: Image.asset(
                      'assets/banner2.png', // Add the banner image here
                      fit: BoxFit.cover,   // Ensure the image fits within its container
                    ),
                  ),
                ),
                ShopByStore(),
                Recommended(),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0), // Apply border radius here
                    child: Image.asset(
                      'assets/banner3.png', // Add the banner image here
                      fit: BoxFit.cover,   // Ensure the image fits within its container
                    ),
                  ),
                ),
                // Add other cards here
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
