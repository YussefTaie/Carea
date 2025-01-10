import 'package:carsapp/SharedTheams/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  List carsreview = [
    {
      'name': 'Dodge',
      'image':
          'https://images.pexels.com/photos/3311574/pexels-photo-3311574.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'price': '500k\$',
      'rate': '5'
    },
    {
      'name': 'Mercedes',
      'image':
          'https://images.pexels.com/photos/9827419/pexels-photo-9827419.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'price': '100k\$',
      'rate': '4'
    },
    {
      'name': 'BMW',
      'image':
          'https://images.pexels.com/photos/7238147/pexels-photo-7238147.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'price': '200k\$',
      'rate': '3'
    },
    {
      'name': 'Audi',
      'image':
          'https://images.pexels.com/photos/14424857/pexels-photo-14424857.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'price': '350k\$',
      'rate': '7'
    },
    {
      'name': 'Volkswagen',
      'image':
          'https://images.pexels.com/photos/5362306/pexels-photo-5362306.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'price': '150k\$',
      'rate': '4'
    },
    {
      'name': 'Chevrolet',
      'image':
          'https://images.pexels.com/photos/14136562/pexels-photo-14136562.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'price': '300k\$',
      'rate': '4'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: GridView(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.8),
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              children: [
                for (int i = 0; i < carsreview.length; i++)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.0)),
                            image: DecorationImage(
                                image: NetworkImage(carsreview[i]['image']),
                                fit: BoxFit.cover),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                gradient: LinearGradient(
                                    begin: Alignment.bottomRight,
                                    colors: [
                                      Colors.black.withOpacity(.6),
                                      Colors.black.withOpacity(.5),
                                      Colors.black.withOpacity(.2),
                                    ])),
                            child: Container(
                              height: 165,
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.all(16.0),
                              child: InkWell(
                                onTap: () {},
                                child: Icon(
                                  CupertinoIcons.heart,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 2.0, left: 16.0, right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  carsreview[i]['name'],
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: AppColors.White),
                                ),
                                Text(
                                  carsreview[i]['price'],
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: AppColors.White),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '⭐ ${carsreview[i]!['rate']}',
                              style: GoogleFonts.poppins(
                                  fontSize: 16, color: AppColors.White),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
