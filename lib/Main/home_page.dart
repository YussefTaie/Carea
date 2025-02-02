import 'package:carsapp/Main/notification_page.dart';
import 'package:carsapp/Main/special_offers_page.dart';
import 'package:carsapp/Main/top_deals_page.dart';
import 'package:carsapp/SharedDesignd/category_section.dart';
import 'package:carsapp/SharedDesignd/product_card.dart';
import 'package:carsapp/SharedTheams/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List cars = [
    {
      'name': 'Mercedes',
      'image': 'assets/images/merc.jpg',
    },
    {
      'name': 'Ford',
      'image': 'assets/images/for.jpg',
    },
    {
      'name': 'Bentley',
      'image': 'assets/images/bent.jpg',
    },
    {
      'name': 'Hynday',
      'image': 'assets/images/hyn.jpg',
    },
    {
      'name': 'Tesla',
      'image': 'assets/images/Tes.jpg',
    },
    {
      'name': 'Tyota',
      'image': 'assets/images/ty.jpg',
    },
    {
      'name': 'Audi',
      'image': 'assets/images/aud.jpg',
    },
    {
      'name': 'Mercedes',
      'image': 'assets/images/merc.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Backgroundcolor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/2128807/pexels-photo-2128807.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Good Morning 👋🏻',
                        style: GoogleFonts.poppins(
                            color: AppColors.White,
                            fontWeight: FontWeight.normal,
                            fontSize: 16)),
                    Text('Yussef Taie',
                        style: GoogleFonts.poppins(
                            color: AppColors.White,
                            fontWeight: FontWeight.bold,
                            fontSize: 16)),
                  ],
                ),
              )
            ],
          ),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationPage()),
                  );
                },
                child: Icon(
                  CupertinoIcons.bell_fill,
                  size: 28,
                  color: AppColors.White,
                ),
              ))
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0, left: 16, top: 60),
            child: SizedBox(
              height: 55,
              child: Container(
                  child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: GoogleFonts.poppins(color: AppColors.Grey),
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: AppColors.Grey,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide:
                        BorderSide(color: Colors.transparent, width: 1.0),
                  ),
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              )),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Special Offers',
                  style: GoogleFonts.poppins(
                      color: AppColors.White,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SpecialOffersPage()),
                    );
                  },
                  child: Text(
                    'See All',
                    style: GoogleFonts.poppins(
                      color: AppColors.White,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Banner Section
          Padding(
            padding: const EdgeInsets.only(right: 16.0, left: 16, top: 0),
            child: SizedBox(
                height: 200,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff2F3645),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.transparent, width: 1.0),
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
          Padding(
              padding: const EdgeInsets.only(right: 16.0, left: 16, top: 20),
              child: GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1,
                  mainAxisSpacing: 3,
                ),
                physics: NeverScrollableScrollPhysics(),
                children: [
                  for (int i = 0; i < cars.length; i++)
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff2F3645),
                              // border: Border.all(color: Colors.white)
                            ),
                            child: Center(
                                child: Image(
                                    height: 50,
                                    width: 30,
                                    image: AssetImage(cars[i]['image']))),
                          ),
                          Text(
                            cars[i]['name'],
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: AppColors.White),
                          )
                        ],
                      ),
                    ),
                ],
              )),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Deals',
                  style: GoogleFonts.poppins(
                      color: AppColors.White,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TopDealsPage()),
                    );
                  },
                  child: Text(
                    'See All',
                    style: GoogleFonts.poppins(
                      color: AppColors.White,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CategorySection(),
          ProductCard(),
        ],
      ),
    );
  }
}
