import 'package:carsapp/Main/cart_page.dart';
import 'package:carsapp/Main/home_page.dart';
import 'package:carsapp/Main/wishlist.dart';
import 'package:carsapp/SharedTheams/app_colors.dart';
import 'package:carsapp/User/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List pages = [
    HomePage(),
    CartPage(),
    WishlistPage(),
    ProfilePage(),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.cart), label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.heart), label: 'Wishlist'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person), label: 'Profile'),
          ],
          //Selected
          selectedIconTheme: IconThemeData(color: AppColors.White, size: 25),
          selectedLabelStyle: GoogleFonts.poppins(
            fontSize: 14,
            color: AppColors.White,
          ),
          selectedItemColor: AppColors.White,

          //UNSelected
          unselectedIconTheme: IconThemeData(color: AppColors.Grey, size: 25),
          unselectedLabelStyle: GoogleFonts.poppins(
            fontSize: 14,
            color: AppColors.Grey,
          ),
          unselectedItemColor: AppColors.Grey,

          backgroundColor: AppColors.Backgroundcolor,
          type: BottomNavigationBarType.fixed,
          elevation: 0.0,
          currentIndex: selectedIndex,

          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
        ),
        body: pages[selectedIndex]);
  }
}
