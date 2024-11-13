import 'package:flutter/material.dart';
import 'package:yoga_client/features/home/presentation/screens/home_screen.dart';

import '../../config/constants/colors.dart';
import '../../features/add_to_cart/add_to_cart_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetOptions = <Widget>[
      HomeScreen(),
      AddToCartScreen(),
    ];
    void OnTapped(index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 20,
        selectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: OnTapped,
        selectedIconTheme:
            IconThemeData(color: ColorConst.lightTeal, size: 32.0),
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            label: "Cart",
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.message_rounded),
          //   label: "Message",
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.person),
          //   label: "Profile",
          // ),
        ],
      ),
    );
  }
}
