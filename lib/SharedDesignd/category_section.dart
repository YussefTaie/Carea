import 'package:carsapp/SharedTheams/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({super.key});

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  List cars = ['Dodge', 'Mercedes', 'BMW', 'Audi', 'Volkswagen', 'Chevrolet'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (int i = 0; i < cars.length; i++)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 2.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Center(
                          child: Text(
                            cars[i],
                            style: GoogleFonts.poppins(
                                color: AppColors.White, fontSize: 15),
                          ),
                        ),
                      ),
                    )),
              ),
            ),
        ],
      ),
    );
  }
}
