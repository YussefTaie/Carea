import 'package:carsapp/SharedTheams/app_colors.dart';
import 'package:carsapp/SharedWidgets/back_btn.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpecialOffersPage extends StatefulWidget {
  const SpecialOffersPage({super.key});

  @override
  State<SpecialOffersPage> createState() => _SpecialOffersPageState();
}

class _SpecialOffersPageState extends State<SpecialOffersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.Backgroundcolor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Center(
            child: Text(
              'Special Offers',
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
                    Icons.more_horiz,
                    size: 28,
                    color: AppColors.White,
                  ),
                ))
          ],
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                for (int i = 0; i < 6; i++)
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 16.0,
                      left: 16,
                      top: 16,
                    ),
                    child: SizedBox(
                        height: 200,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff2F3645),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                                color: Colors.transparent, width: 1.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('20%',
                                        style: GoogleFonts.poppins(
                                            color: AppColors.White,
                                            fontSize: 50,
                                            fontWeight: FontWeight.bold)),
                                    Text(
                                      'Camaro',
                                      style: GoogleFonts.poppins(
                                          color: AppColors.White,
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    Text(
                                      'Powerful, stylish,\nthrilling, iconic.',
                                      style: GoogleFonts.poppins(
                                          color: AppColors.Grey,
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: SizedBox(
                                  width: 210,
                                  child: Container(
                                    width: 237,
                                    height: 130,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/C1.jpg',
                                      ),
                                      fit: BoxFit.fill,
                                    )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
              ],
            ),
          ],
        ));
  }
}
