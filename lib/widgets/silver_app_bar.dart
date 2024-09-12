import 'package:flutter/material.dart';
import '../colors/colors.dart';

class SilverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: true,
      backgroundColor: AppColors.primaryColor,
      expandedHeight: 200.0, // Adjust as needed
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.all(0),
        title: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Quickly",
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.home, color: AppColors.iconColor, size: 30),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Delivery Address",
                            style: TextStyle(
                              color: AppColors.hintText,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            "Your Address",
                            style: TextStyle(
                              color: AppColors.Text,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10), // Ensure spacing
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/profile.jpg'),
                      radius: 20,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
                child: Container(
                  height: 30.0,
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                    color: AppColors.searchBarColor,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search for 'Cakes'...",
                            hintStyle: TextStyle(color: AppColors.hintText),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(color: AppColors.textColor, fontSize: 12),
                        ),
                      ),
                      Icon(Icons.search, color: AppColors.iconColor, size: 16.0),
                      Container(
                        height: 20.0,
                        width: 1.0,
                        color: AppColors.iconColor,
                        margin: EdgeInsets.symmetric(horizontal: 8.0),
                      ),
                      Icon(Icons.mic_none_outlined, color: AppColors.iconColor, size: 16.0),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
