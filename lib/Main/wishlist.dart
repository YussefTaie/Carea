import 'package:carsapp/SharedDesignd/product_card.dart';
import 'package:carsapp/SharedTheams/app_colors.dart';
import 'package:carsapp/SharedWidgets/back_btn.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Backgroundcolor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Center(
          child: Text(
            'WishList',
            style: GoogleFonts.poppins(
              color: AppColors.White,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ),
        leading: BackBtn(),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.search,
                  size: 28,
                  color: AppColors.White,
                ),
              ))
        ],
      ),
      body: ListView(
        children: [Padding(padding: EdgeInsets.only(top: 20)), ProductCard()],
      ),
    );
  }
}
