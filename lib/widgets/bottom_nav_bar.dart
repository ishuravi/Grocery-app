import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Handle navigation based on selected index here
    // For example:
    // if (index == 0) Navigator.pushNamed(context, '/home');
    // if (index == 1) Navigator.pushNamed(context, '/reorder');
    // if (index == 2) Navigator.pushNamed(context, '/wallet');
    // if (index == 3) Navigator.pushNamed(context, '/profile');
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.repeat_rounded),
          label: 'Reorder',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.wallet_giftcard),
          label: 'Wallet',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      showSelectedLabels: true,
    );
  }
}
